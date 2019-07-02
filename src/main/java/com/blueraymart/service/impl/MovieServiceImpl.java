/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.service.impl;

import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Movie;
import com.blueraymart.service.MovieService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NanoX
 */
@Service
public class MovieServiceImpl implements MovieService{
    @Autowired
    private MovieDao movieDao;
    
    @Override
    public Movie getMovieById(int movieId){
        return movieDao.getMovieById(movieId);
    }

    @Override
    public List<Movie> getMovieList() {
        return movieDao.getMovieList();
    }

    @Override
    public void addMovie(Movie movie) {
        movieDao.addMovie(movie);
    }

    @Override
    public void editMovie(Movie movie) {
        movieDao.editMovie(movie);
    }

    @Override
    public void deleteMovie(Movie movie) {
        movieDao.deleteMovie(movie);
    }

    @Override
    public List<Movie> getLatestMovies() {
        return movieDao.getLatestMovies();
    }

    @Override
    public List<Movie> getUpcomingMovies() {
        return movieDao.getUpcomingMovies();
    }

    @Override
    public List<Movie> getMoviesByGenere(String Genere) {
        return movieDao.getMoviesByGenere(Genere);
    }
    
    
}
