/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.service;

import com.blueraymart.model.Customer;
import java.util.List;

/**
 *
 * @author NanoX
 */
public interface CustomerService {
    
    void addCustomer(Customer customer);
    Customer getCustomerById(int customerId);
    List<Customer> getAllCustomers();
}
