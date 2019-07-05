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
    
    List<Movie> getMovieList();
    Movie getMovieById(int id);
    void addMovie(Movie movie);
    void editMovie(Movie movie);
    void deleteMovie(Movie movie);
    void updateMovieUnitinStock(int amount);
    List<Movie> getLatestMovies();
    List<Movie> getUpcomingMovies();
    List<Movie> getMoviesByGenere(String Genere);
    
}
