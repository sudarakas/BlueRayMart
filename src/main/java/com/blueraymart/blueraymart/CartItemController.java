/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author NanoX
 */
//@Controller
//@RequestMapping("/cart")
//public class CartItemController {
//    
//    @RequestMapping
//    public String get(HttpServletRequest request){
//        return "redirect:/cart/"+request.getSession(true).getId();
//    }
//    
//    @RequestMapping(value = "/{cartId}", method = RequestMethod.GET)
//    public String getCart(@PathVariable (value = "cartId") String cartId, Model model){
//        model.addAttribute("cartId", cartId);
//        
//        return "cart";
//    }
//}
