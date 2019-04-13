/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Movie;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NanoX
 */
@Controller
public class HomeController {
    
    private MovieDao movieDao = new MovieDao();
    
    @RequestMapping("/")
    public String home(){
        return "home";
    }
    
    @RequestMapping("/movieList")
    public String getMovie(Model model){
        List<Movie> movies = movieDao.getMovieList();
        model.addAttribute("movies", movies);
        
        return "movieList";
    }
    
    @RequestMapping("/movieList/viewMovie")
    public String viewMovie(){
        return "viewMovie";
    }
}
