/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.service;

import com.blueraymart.model.Cart;

/**
 *
 * @author NanoX
 */
public interface CartService {
    Cart getCartById(int cartId);
    void update(Cart cart);
}
