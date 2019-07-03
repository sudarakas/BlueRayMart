/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.model.Movie;
import com.blueraymart.service.MovieService;
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
    
    @RequestMapping("/movieList/viewMovie/{movieId}")
    public String viewMovie(@PathVariable int movieId, Model model) throws IOException {
        Movie movie = movieService.getMovieById(movieId);
        model.addAttribute(movie);
        return "viewMovie";
    }
    
    @RequestMapping("/movieList/{movieGenre}")
    public String getMoviesByGenere(@PathVariable String movieGenre, Model model) throws IOException {
        List<Movie> movies = movieService.getMoviesByGenere(movieGenre);
        model.addAttribute("movies", movies);
        
        return "movieList";
    }
}
