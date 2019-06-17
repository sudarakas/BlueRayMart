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
public class HomeController {
    
    @Autowired
    private MovieDao movieDao;

    @RequestMapping("/")
    public String home(Model model) {
        List<Movie> movies = movieDao.getLatestMovies();
        List<Movie> upcommingMovies = movieDao.getUpcomingMovies();
        model.addAttribute("movies", movies);
        model.addAttribute("upcommingMovies", upcommingMovies);
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

}
