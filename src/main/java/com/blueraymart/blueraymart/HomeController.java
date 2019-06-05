/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Movie;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class HomeController {
    
    private Path path;
    
    @Autowired
    private MovieDao movieDao;

    @RequestMapping("/")
    public String home(Model model) {
        List<Movie> movies = movieDao.getLatestMovies();
        model.addAttribute("movies", movies);
        
        return "home";
    }

    @RequestMapping("/movieList")
    public String getMovie(Model model) {
        List<Movie> movies = movieDao.getAllMovies();
        model.addAttribute("movies", movies);

        return "movieList";
    }
    

    @RequestMapping("/movieList/viewMovie/{movieId}")
    public String viewMovie(@PathVariable String movieId, Model model) throws IOException {
        Movie movie = movieDao.getMovieById(movieId);
        model.addAttribute(movie);
        return "viewMovie";
    }
    
    @RequestMapping("/movieList/{movieGenre}")
    public String getMoviesByGenere(@PathVariable String movieGenre, Model model) throws IOException {
        List<Movie> movies = movieDao.getMoviesByGenere(movieGenre);
        model.addAttribute("movies", movies);
        
        return "movieList";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "admin";
    }

    @RequestMapping("/admin/inventory")
    public String inventory(Model model) {
        List<Movie> movies = movieDao.getAllMovies();
        model.addAttribute("movies", movies);

        return "inventory";
    }

    @RequestMapping("/admin/inventory/addmovie")
    public String addMovie(Model model) {
        Movie movie = new Movie();
        
        model.addAttribute("movie",movie);
        return "addMovie";
    }
    
    @RequestMapping(value="/admin/inventory/addmovie", method = RequestMethod.POST)
    public String addMoviePost(@ModelAttribute("movie") Movie movie, HttpServletRequest request){
        movieDao.addMovie(movie);
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
    
    @RequestMapping("/admin/inventory/deleteMovie/{movieId}")
    public String deleteMovie(@PathVariable String movieId, Model model, HttpServletRequest request){
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + movieId + ".png");
        
        if(Files.exists(path)){
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        
        movieDao.deleteMovie(movieId);
        
        return "redirect:/admin/inventory";
    }
    
    @RequestMapping("/admin/inventory/editMovie/{movieId}")
    public String editMovie(@PathVariable String movieId,Model model){
        
        Movie movie = movieDao.getMovieById(movieId);
        model.addAttribute(movie);
        
        return "editMovie";
    }
    
    @RequestMapping(value = "admin/inventory/editMovie", method = RequestMethod.POST)
    public String editMovie(@ModelAttribute Movie movie, Model model, HttpServletRequest request){
        
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
        
        movieDao.editMovie(movie);
        
        return "redirect:/admin/inventory";
    }
}
