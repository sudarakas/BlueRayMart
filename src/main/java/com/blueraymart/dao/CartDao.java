/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao;

import com.blueraymart.model.Cart;

/**
 *
 * @author NanoX
 */
public interface CartDao {
    
    Cart createCart(Cart cart);
    Cart readCart(String cartId);
    void updateCart(String cartId, Cart cart);
    void deleteCart(String cartId);
}
