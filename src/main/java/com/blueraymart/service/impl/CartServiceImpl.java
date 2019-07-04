/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.service.impl;

import com.blueraymart.dao.CartDao;
import com.blueraymart.model.Cart;
import com.blueraymart.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NanoX
 */
@Service
public class CartServiceImpl implements CartService{
    
    @Autowired
    private CartDao cartDao;
    
    @Override
    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    @Override
    public void update(Cart cart) {
        cartDao.update(cart);
    }
    
}
