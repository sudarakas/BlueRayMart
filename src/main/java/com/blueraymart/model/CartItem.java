/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.model;

/**
 *
 * @author NanoX
 */
public class CartItem {
    
    private Movie movie;
    private int quantity;
    private double totalPrice;
    
    public  CartItem(){
        
    }

    public CartItem(Movie movie, int quantity, double totalPrice) {
        this.movie = movie;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    
    
    
}
