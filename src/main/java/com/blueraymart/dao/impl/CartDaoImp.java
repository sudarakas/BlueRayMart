/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao.impl;

import com.blueraymart.dao.CartDao;
import com.blueraymart.model.Cart;
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Repository;

/**
 *
 * @author NanoX
 */
@Repository
public class CartDaoImp implements CartDao{
    
    private Map<String, Cart> cartsList;
    public CartDaoImp(){
        cartsList = new HashMap<String,Cart>();
    }

    @Override
    public Cart createCart(Cart cart) {
        if(cartsList.keySet().contains(cart.getCartId())){
            throw new IllegalArgumentException(String.format("Oops! can not creat a cart with already existing id", cart.getCartId()));
        }
        cartsList.put(cart.getCartId(), cart);
        return cart;
    }

    @Override
    public Cart readCart(String cartId) {
        return cartsList.get(cartId);
    }

    @Override
    public void updateCart(String cartId, Cart cart) {
        if(!cartsList.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("Oops! can not update a cart with  non-existing id", cart.getCartId()));
        }
        cartsList.put(cartId, cart);
    }

    @Override
    public void deleteCart(String cartId) {
        if(!cartsList.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("Oops! can not delete a cart with  non-existing id", cartId));
        }
        cartsList.remove(cartId);
    }
    
}
