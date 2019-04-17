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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NanoX
 */
@Controller
public class HomeController {
    
    @Autowired
    private MovieDao movieDao;
    
    @RequestMapping("/")
    public String home(){
        return "home";
    }
    
    @RequestMapping("/movieList")
    public String getMovie(Model model){
        List<Movie> movies = movieDao.getAllMovies();
        model.addAttribute("movies", movies);
        
        return "movieList";
    }
    
    @RequestMapping("/movieList/viewMovie/{movieID}")
    public String viewMovie(@PathVariable String movieID, Model model) throws IOException{
        Movie movie = movieDao.getMovieById(movieID);
        model.addAttribute(movie);
        return "viewMovie";
    }
}
