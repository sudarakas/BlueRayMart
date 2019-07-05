/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao.impl;

import com.blueraymart.dao.CartDao;
import com.blueraymart.model.Cart;
import java.io.IOException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author NanoX
 */
@Repository
@Transactional
public class CartDaoImp implements CartDao{
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public Cart getCartById(int cartId) {
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class, cartId);
        
    }

    @Override
    public void update(Cart cart) {
        int cartId = cart.getCartId();
        //double subTotal = cart.getSubTotal();
    }

    @Override
    public Cart validate(int cartId) throws IOException {
        Cart cart=getCartById(cartId);
        if(cart.getCartItems().size()==0 || cart==null){
            throw  new IOException(cartId+"");
        }
        
        update(cart);
        return cart;
    }
    
}
