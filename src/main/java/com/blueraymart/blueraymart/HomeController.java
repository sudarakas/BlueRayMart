/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Movie;
import com.blueraymart.service.MovieService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NanoX
 */
@Controller
public class HomeController {
    
    @Autowired
    private MovieService movieService;
    
    @RequestMapping("/")
    public String home(Model model){
        List<Movie> movies = movieService.getLatestMovies();
        List<Movie> upcommingMovies = movieService.getUpcomingMovies();
        model.addAttribute("movies", movies);
        model.addAttribute("upcommingMovies", upcommingMovies);
        return "home";
    }
}
