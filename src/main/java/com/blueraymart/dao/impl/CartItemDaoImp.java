/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao.impl;

import com.blueraymart.dao.CartDao;
import com.blueraymart.dao.CartItemDao;
import com.blueraymart.model.Cart;
import com.blueraymart.model.CartItem;
import java.util.List;
import org.hibernate.Query;
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
public class CartItemDaoImp implements CartItemDao{
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    @Override
    public void removeCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    @Override
    public void removeCart(Cart cart) {
        List<CartItem> cartItems = cart.getCartItems();
        for(CartItem item : cartItems){
            removeCartItem(item);
        }
    }

    @Override
    public CartItem getCartItemByMovieId(int movieId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where movieId = ?");
        query.setInteger(0, movieId);
        session.flush();
        
        return  (CartItem) query.uniqueResult();
    }

    
    
}
