/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.service.impl;

import com.blueraymart.dao.CustomerOrderDao;
import com.blueraymart.model.Cart;
import com.blueraymart.model.CartItem;
import com.blueraymart.model.CustomerOrder;
import com.blueraymart.service.CartService;
import com.blueraymart.service.CustomerOrderService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NanoX
 */
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;
    
    @Autowired
    private CartService cartService;

    @Override
    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    @Override
    public double getCustomerOrderSubTotal(int cartId) {
        double subTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();
        
        for (CartItem item : cartItems) {
            subTotal+= item.getTotalPrice();
        }
        
        return subTotal;
    }

}
