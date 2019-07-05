/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao;

import com.blueraymart.model.Cart;
import java.io.IOException;

/**
 *
 * @author NanoX
 */
public interface CartDao {
    
    Cart getCartById(int cartId);
    void update(Cart cart);
    Cart validate(int cartId) throws IOException;
}
