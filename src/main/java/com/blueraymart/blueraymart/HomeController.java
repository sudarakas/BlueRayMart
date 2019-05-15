/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Movie;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author NanoX
 */
@Controller
public class HomeController {

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
    

    @RequestMapping("/movieList/viewMovie/{movieID}")
    public String viewMovie(@PathVariable String movieID, Model model) throws IOException {
        Movie movie = movieDao.getMovieById(movieID);
        model.addAttribute(movie);
        return "viewMovie";
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
        
        movie.setMovieDirector("Nano");
        movie.setMoviePrice(562);
        movie.setMovieGenre("ANime");
        
        model.addAttribute("movie",movie);
        return "addMovie";
    }
    
    @RequestMapping(value="/admin/inventory/addmovie", method = RequestMethod.POST)
    public String addMoviePost(@ModelAttribute("movie") Movie movie){
        movieDao.addMovie(movie);
  
        return "redirect:/admin/inventory";
    }
}
