/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.dao.CartDao;
import com.blueraymart.dao.MovieDao;
import com.blueraymart.model.Cart;
import com.blueraymart.model.CartItem;
import com.blueraymart.model.Movie;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author NanoX
 */
@Controller
@RequestMapping("/rest/cart")
public class CartController {
    
    @Autowired
    private CartDao cartDao;
      
    @Autowired
    private MovieDao movieDao;
    
    @RequestMapping(value = "/{cartId}", method = RequestMethod.GET)
    public @ResponseBody Cart read(@PathVariable(value = "cartId") String cartId){
        return cartDao.readCart(cartId);
    }
    
    @RequestMapping(value = "/{cartId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void update(@PathVariable(value = "cartId")String cartId, @RequestBody Cart cart){
        cartDao.updateCart(cartId, cart);
    }
    
    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "cartId")String cartId){
        cartDao.deleteCart(cartId);
    }
    
    @RequestMapping(value = "/add/{movieId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem(@PathVariable(value = "movieId")String movieId, HttpServletRequest request){
        String sessionId =request.getSession(true).getId();
        Cart cart = cartDao.readCart(sessionId);
        
        if(cart == null){
            cart = cartDao.createCart(new Cart(sessionId));
        }
        
        Movie movie = movieDao.getMovieById(movieId);
        if(movie == null){
            throw new IllegalArgumentException(new Exception());
        }
        
        cart.addCartItem(new CartItem(movie));
        cartDao.updateCart(sessionId, cart);
    }
    
    @RequestMapping(value = "/remove/{movieId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem(@PathVariable String movieId, HttpServletRequest request){
        String sessionId =request.getSession(true).getId();
        Cart cart = cartDao.readCart(sessionId);
        
        if(cart == null){
            cart = cartDao.createCart(new Cart(sessionId));
        }
        
        Movie movie = movieDao.getMovieById(movieId);
        if(movie == null){
            throw new IllegalArgumentException(new Exception());
        }
        
        cart.removeCartItem(new CartItem(movie));
        cartDao.updateCart(sessionId, cart);
    }
    
    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal Request")
    public void handleClientErrors(Exception e){}
    
    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error")
    public void handleServerError(Exception e){}
    
    
    
}
