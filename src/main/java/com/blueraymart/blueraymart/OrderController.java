/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.model.Cart;
import com.blueraymart.model.Customer;
import com.blueraymart.model.CustomerOrder;
import com.blueraymart.service.CartService;
import com.blueraymart.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NanoX
 */
@Controller
public class OrderController {
    
    @Autowired
    private CartService cartService;
    
    @Autowired
    private CustomerOrderService customerOrderService;
    
    @RequestMapping("/order/{cartId}")
    public String customerOrder(@PathVariable("cartId") int cartId){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cartId);
        customerOrder.setCart(cart);
        
        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAddress(customer.getShippingAddress());
        
        customerOrderService.addCustomerOrder(customerOrder);
        
        return "redirect:/checkout?cartId="+cartId;
    }
}
