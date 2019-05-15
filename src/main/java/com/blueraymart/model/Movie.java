/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author NanoX
 */
@Entity
public class Movie {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String movieId;
    private String movieName;
    private String movieFormat;
    private String movieGenre;
    private String movieDirector;
    private String movieStudio;
    private String movieReleaseDate;
    private String movieOriginalLanguage;
    private String movieLanguage;
    private String movieRunTime;
    private String movieIMDB;
    private String movieDescription;
    private double moviePrice;
    private int movieUnitinStock;
    private String movieStatus;

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }
    
    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieFormat() {
        return movieFormat;
    }

    public void setMovieFormat(String movieFormat) {
        this.movieFormat = movieFormat;
    }

    public String getMovieGenre() {
        return movieGenre;
    }

    public void setMovieGenre(String movieGenre) {
        this.movieGenre = movieGenre;
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector;
    }

    public String getMovieStudio() {
        return movieStudio;
    }

    public void setMovieStudio(String movieStudio) {
        this.movieStudio = movieStudio;
    }

    public String getMovieReleaseDate() {
        return movieReleaseDate;
    }

    public void setMovieReleaseDate(String movieReleaseDate) {
        this.movieReleaseDate = movieReleaseDate;
    }

    public String getMovieOriginalLanguage() {
        return movieOriginalLanguage;
    }

    public void setMovieOriginalLanguage(String movieOriginalLanguage) {
        this.movieOriginalLanguage = movieOriginalLanguage;
    }

    public String getMovieLanguage() {
        return movieLanguage;
    }

    public void setMovieLanguage(String movieLanguage) {
        this.movieLanguage = movieLanguage;
    }

    public String getMovieRunTime() {
        return movieRunTime;
    }

    public void setMovieRunTime(String movieRunTime) {
        this.movieRunTime = movieRunTime;
    }

    public String getMovieIMDB() {
        return movieIMDB;
    }

    public void setMovieIMDB(String movieIMDB) {
        this.movieIMDB = movieIMDB;
    }

    public String getMovieDescription() {
        this.movieDescription = movieDescription.substring(0, 10);
        return movieDescription;
    }

    public void setMovieDescription(String movieDescription) {
        this.movieDescription = movieDescription;
    }

    public double getMoviePrice() {
        return moviePrice;
    }

    public void setMoviePrice(double moviePrice) {
        this.moviePrice = moviePrice;
    }

    public int getMovieUnitinStock() {
        return movieUnitinStock;
    }

    public void setMovieUnitinStock(int movieUnitinStock) {
        this.movieUnitinStock = movieUnitinStock;
    }

    public String getMovieStatus() {
        return movieStatus;
    }

    public void setMovieStatus(String movieStatus) {
        this.movieStatus = movieStatus;
    }

    public String getMovieRunTime(int i) {
        return movieRunTime;
    }
    
    
}
