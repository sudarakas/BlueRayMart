/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

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
@RequestMapping("/movie")
public class MovieController {
    
    @Autowired
    private MovieService movieService;
    
    @RequestMapping("/movieList")
    public String getMovies(Model model) {
        List<Movie> movies = movieService.getMovieList();
        model.addAttribute("movies", movies);

        return "movieList";
    }
}
