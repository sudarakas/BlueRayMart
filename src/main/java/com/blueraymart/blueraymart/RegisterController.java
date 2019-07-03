/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.model.BillingAddress;
import com.blueraymart.model.Customer;
import com.blueraymart.model.ShippingAddress;
import com.blueraymart.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NanoX
 */
@Controller
public class RegisterController {
    
    @Autowired
    private CustomerService customerService;
    
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
    
    @RequestMapping("/register/registeruser")
    public String registerCustomerSave(@ModelAttribute("customer") Customer customer, Model model){
        customer.setEnabled(true);
        customerService.addCustomer(customer);
        
        return "login";
    }
}
