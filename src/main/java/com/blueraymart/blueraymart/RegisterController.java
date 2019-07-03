/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.model.BillingAddress;
import com.blueraymart.model.Customer;
import com.blueraymart.model.ShippingAddress;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NanoX
 */
@Controller
public class RegisterController {
    
    @RequestMapping("/register")
    public String registerCustomer(Model model){
        
        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);
        
        model.addAttribute("customer", customer);
        
        return "register";
    }
}
