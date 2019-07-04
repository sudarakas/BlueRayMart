/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao;

import com.blueraymart.model.Cart;
import com.blueraymart.model.CartItem;

/**
 *
 * @author NanoX
 */
public interface CartItemDao {
    void addCartItem(CartItem cartItem);
    void removeCartItem(CartItem cartItem);
    void removeCart(Cart cart);
    CartItem getCartItemByMovieId(int movieId);
}
