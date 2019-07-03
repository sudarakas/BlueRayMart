/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart.admin;

import com.blueraymart.model.Movie;
import com.blueraymart.service.MovieService;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author NanoX
 */
@Controller
@RequestMapping("/admin")
public class AdminMovieController {
    
   
    private Path path;
    
    @Autowired
    private MovieService movieService;
    
    @RequestMapping("/movie/addmovie")
    public String addMovie(Model model){
        Movie movie = new Movie();
        
        model.addAttribute("movie",movie);
        return "addMovie";
    }
    
    @RequestMapping(value="/movie/addmovie", method = RequestMethod.POST)
    public String addMoviePost(@Valid @ModelAttribute("movie") Movie movie,BindingResult result, HttpServletRequest request){
        
        if(result.hasErrors()){
            return "addMovie"; 
        }
        
        movieService.addMovie(movie);
        MultipartFile movieImage = movie.getMovieImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + movie.getMovieId() + ".png");
        
        if(movieImage != null && !movieImage.isEmpty()){
            try {
                movieImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Oops! Something wrong with image upload!", e);
            }
        }
        
        return "redirect:/admin/inventory";
    }
    
    @RequestMapping("/movie/editMovie/{movieId}")
    public String editMovie(@PathVariable("movieId") int movieId,Model model){
        
        Movie movie = movieService.getMovieById(movieId);
        model.addAttribute(movie);
        
        return "editMovie";
    }
    
    @RequestMapping(value = "/movie/editMovie", method = RequestMethod.POST)
    public String editMovie(@Valid @ModelAttribute("movie") Movie movie, Model model,BindingResult result, HttpServletRequest request){
        
        if(result.hasErrors()){
            return "editMovie";
        }
        
        MultipartFile movieImage = movie.getMovieImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + movie.getMovieId() + ".png");
        
        if(movieImage != null && !movieImage.isEmpty()){
            try {
                movieImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Oops! Something wrong with image upload!", e);
            }
        }
        
        movieService.editMovie(movie);
        
        return "redirect:/admin/inventory";
    }
    
    @RequestMapping("/movie/deleteMovie/{movieId}")
    public String deleteMovie(@PathVariable("movieId") int movieId, Model model, HttpServletRequest request){
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + movieId + ".png");
        
        if(Files.exists(path)){
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Movie movie = movieService.getMovieById(movieId);
        movieService.deleteMovie(movie);
        
        return "redirect:/admin/inventory";
    }
}
