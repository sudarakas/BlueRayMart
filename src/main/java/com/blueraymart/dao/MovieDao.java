/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao;

import com.blueraymart.model.Movie;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author NanoX
 */
public class MovieDao {
    
    private List<Movie> movieList;
    
    public List<Movie> getMovieList(){
        Movie movie1 = new Movie();
        
        movie1.setMovieName("Harry Potter");
        movie1.setMovieDescription("A Movie");
        movie1.setMovieDirector("JK Row");
        movie1.setMovieFormat("BlueRay");
        movie1.setMovieGenre("Animation");
        movie1.setMovieIMDB("www.imdb.vom");
        movie1.setMovieLanguage("English");
        movie1.setMovieOriginalLanguage("English");
        movie1.setMoviePrice(1500);
        movie1.setMovieReleaseDate("1996.05.12");
        movie1.setMovieRunTime("120");
        movie1.setMovieStatus("Released");
        movie1.setMovieStudio("Universal");
        movie1.setMovieUnitinStock(250);
        
        Movie movie2 = new Movie();
        
        movie2.setMovieName("Avenger End Game");
        movie2.setMovieDescription("A Marvel Movie");
        movie2.setMovieDirector("Marvel");
        movie2.setMovieFormat("BlueRay");
        movie2.setMovieGenre("Sci-Fi");
        movie2.setMovieIMDB("www.imdb.vom");
        movie2.setMovieLanguage("English");
        movie2.setMovieOriginalLanguage("English");
        movie2.setMoviePrice(7500);
        movie2.setMovieReleaseDate("1996.05.12");
        movie2.setMovieRunTime("380");
        movie2.setMovieStatus("Coming Soon");
        movie2.setMovieStudio("Marvel");
        movie2.setMovieUnitinStock(0);
        
        Movie movie3 = new Movie();
        
        movie3.setMovieName("Grown Up II");
        movie3.setMovieDescription("A Super Comdey");
        movie3.setMovieDirector("Paul");
        movie3.setMovieFormat("BlueRay");
        movie3.setMovieGenre("Comdedy");
        movie3.setMovieIMDB("www.imdb.vom");
        movie3.setMovieLanguage("English");
        movie3.setMovieOriginalLanguage("English");
        movie3.setMoviePrice(1200);
        movie3.setMovieReleaseDate("1996.05.12");
        movie3.setMovieRunTime("260");
        movie3.setMovieStatus("Released");
        movie3.setMovieStudio("FOX");
        movie3.setMovieUnitinStock(50);
        
        Movie movie4 = new Movie();
        
        movie4.setMovieName("First Man");
        movie4.setMovieDescription("A Movie to the moon");
        movie4.setMovieDirector("Steaves");
        movie4.setMovieFormat("DVD");
        movie4.setMovieGenre("Darama");
        movie4.setMovieIMDB("www.imdb.vom");
        movie4.setMovieLanguage("English");
        movie4.setMovieOriginalLanguage("English");
        movie4.setMoviePrice(3200);
        movie4.setMovieReleaseDate("1996.05.12");
        movie4.setMovieRunTime("180");
        movie4.setMovieStatus("Released");
        movie4.setMovieStudio("Universal");
        movie4.setMovieUnitinStock(30);
        
        movieList = new ArrayList<>();
        movieList.add(movie1);
        movieList.add(movie2);
        movieList.add(movie3);
        movieList.add(movie4);
        
        return movieList;
        
    }
}
