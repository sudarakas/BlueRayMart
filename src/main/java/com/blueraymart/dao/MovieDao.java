/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao;

import com.blueraymart.model.Movie;
import java.util.List;

/**
 *
 * @author NanoX
 */
public interface MovieDao {
    
    void addMovie(Movie movie);
    void editMovie(Movie movie);
    void deleteMovie(String Id);
    Movie getMovieById(String Id);
    List<Movie> getAllMovies();
    List<Movie> getLatestMovies();
    List<Movie> getUpcomingMovies();
    List<Movie> getMoviesByGenere(String Genere);
    
}
