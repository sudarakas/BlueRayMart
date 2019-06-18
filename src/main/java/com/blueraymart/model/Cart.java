/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author NanoX
 */
public class Cart {
    
    private String cartId;
    private Map<String, CartItem> cartItems;
    private double subTotal;
    
    private Cart(){
        cartItems = new HashMap<>();
        subTotal = 0;
    }
    
    private Cart(String cartId){
        this();
        this.cartId=cartId;
    }

    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    public Map<String, CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(Map<String, CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }
    
    public void addCartItem(CartItem item){
        String movieId = item.getMovie().getMovieId();
        
        if(cartItems.containsKey(movieId)){
            CartItem existingCartItem = cartItems.get(movieId);
            existingCartItem.setQuantity(existingCartItem.getQuantity()+item.getQuantity());
            cartItems.put(movieId, existingCartItem);
        }
        else{
            cartItems.put(movieId, item);
        }
        
        updateSubTotal();
    }
    
    public void removeCartItem(CartItem item){
        String movieId = item.getMovie().getMovieId();
        cartItems.remove(movieId);
        updateSubTotal();
    }
}
