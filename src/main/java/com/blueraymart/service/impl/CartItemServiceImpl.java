/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.service.impl;

import com.blueraymart.dao.CartItemDao;
import com.blueraymart.model.Cart;
import com.blueraymart.model.CartItem;
import com.blueraymart.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NanoX
 */
@Service
public class CartItemServiceImpl implements CartItemService{
    
    @Autowired
    private CartItemDao cartItemDao;
    
    @Override
    public void addCartItem(CartItem cartItem) {
        cartItemDao.addCartItem(cartItem);
    }

    @Override
    public void removeCartItem(CartItem cartItem) {
        cartItemDao.removeCartItem(cartItem);
    }

    @Override
    public void removeCart(Cart cart) {
        cartItemDao.removeCart(cart);
    }

    
    
}
