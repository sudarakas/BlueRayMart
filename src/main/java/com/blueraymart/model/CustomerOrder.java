/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

/**
 *
 * @author NanoX
 */
@Entity
public class CustomerOrder implements Serializable{

    private static final long serialVersionUID = 1406232759645038144L;
    
    @Id
    @GeneratedValue
    private int customerOrderId;
    
    @OneToOne
    @JoinColumn(name = "cartId")
    private Cart cart;
    
    @OneToOne
    @JoinColumn(name = "customerId")
    private Customer customer;
    
    @OneToOne
    @JoinColumn(name = "billingAddressId")
    private BillingAddress billingAddress;
    
    @OneToOne
    @JoinColumn(name = "shippingAddressId")
    private ShippingAddress shippingAddress;
    
}
