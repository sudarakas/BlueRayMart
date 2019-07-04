/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.model.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author NanoX
 */
@Controller
@RequestMapping("/rest/cart")
public class CartResourceController {
    
    @Autowired
    private CartService cartService;
    
    @RequestMapping("/{cartId}")
    public @ResponseBody
    Cart getCartById(@PathVariable (value = "cartId") int cartId){
        return cartService.getCartById(cartId);
    }
}
