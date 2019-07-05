/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.dao.impl;

import com.blueraymart.dao.CustomerOrderDao;
import com.blueraymart.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author NanoX
 */
@Repository
@Transactional
public class CustomerOrderDaoImp implements CustomerOrderDao{
    @Autowired
    private SessionFactory sessionFactory;
    
    public void addCustomerOrder(CustomerOrder customerOrder){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }
}
