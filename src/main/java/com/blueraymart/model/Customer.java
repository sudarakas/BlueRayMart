/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author NanoX
 */
@Entity
public class Customer implements Serializable{

    private static final long serialVersionUID = 3258048938152122048L;
    
    @Id
    @GeneratedValue
    private int customerId;
    
    @NotEmpty(message = "Customer Name shoudn't be empty")
    private String customerName;
    
    @NotEmpty(message = "Customer Email shoudn't be empty")
    private String customerEmail;
    private String customerPhone;
    
    @NotEmpty(message = "username shoudn't be empty")
    private String username;
    
    @NotEmpty(message = "password shoudn't be empty")
    private String password;
    
    private boolean enabled;
    
    @OneToOne
    @JoinColumn(name = "billingAddressId")
    private BillingAddress billingAddress;
    
    @OneToOne
    @JoinColumn(name = "shippingAddressId")
    private ShippingAddress shippingAddress;
    
    @OneToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private Cart cart;
    
    
}
