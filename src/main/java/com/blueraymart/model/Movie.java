/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author NanoX
 */
@Entity
public class Movie implements Serializable{

    private static final long serialVersionUID = 2387707837885240562L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String movieId;
    
    @NotEmpty(message = "Movie Name shouldn't be empty")
    private String movieName;
    @NotEmpty(message = "Movie Fromate shouldn't be empty")
    private String movieFormat;
    @NotEmpty(message = "Movie Genere shouldn't be empty")
    private String movieGenre;
    @NotEmpty(message = "Movie Director shouldn't be empty")
    private String movieDirector;
    @NotEmpty(message = "Movie Stdio shouldn't be empty")
    private String movieStudio;
    private String movieReleaseDate;
    private String movieOriginalLanguage;
    private String movieLanguage;
    @NotEmpty(message = "Movie Runtime shouldn't be empty")
    private String movieRunTime;
    private String movieIMDB;
    private String movieDescription; 
    @Min(value = 0, message = "Price shoud be equal or higher than 0.00")
    private double moviePrice;
    @Min(value = 0, message = "UnitinStock shoud be equal or higher than 0.00")
    private int movieUnitinStock;
    @NotEmpty(message = "Movie Status shouldn't be empty")
    private String movieStatus;
    
    @Transient
    private MultipartFile movieImage;
    
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JsonIgnore
    private List<CartItem> cartItemList;
    
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

    public MultipartFile getMovieImage() {
        return movieImage;
    }

    public void setMovieImage(MultipartFile movieImage) {
        this.movieImage = movieImage;
    }

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }
    
    
    
    
}
