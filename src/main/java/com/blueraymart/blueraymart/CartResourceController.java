/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import com.blueraymart.model.Cart;
import com.blueraymart.model.CartItem;
import com.blueraymart.model.Customer;
import com.blueraymart.model.Movie;
import com.blueraymart.service.CartItemService;
import com.blueraymart.service.CartService;
import com.blueraymart.service.CustomerService;
import com.blueraymart.service.MovieService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
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
public class CartResourceController {
    
    @Autowired
    private CartService cartService;
    
    @Autowired
    private CustomerService customerService;
    
    @Autowired
    private MovieService movieService;
    
    @Autowired
    private CartItemService cartItemService;
    
    @RequestMapping("/{cartId}")
    public @ResponseBody
    Cart getCartById(@PathVariable (value = "cartId") int cartId){
        return cartService.getCartById(cartId);
    }
    
    @RequestMapping(value = "/add/{movieId}", method = RequestMethod.POST)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem(@PathVariable(value = "movieId") int movieId,@AuthenticationPrincipal User activeUser){
        
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        Cart cart = customer.getCart();
        Movie movie = movieService.getMovieById(movieId);
        List<CartItem> cartItems = cart.getCartItems();
        
        for (int i = 0; i <cartItems.size(); i++) {
            if(movie.getMovieId()==cartItems.get(i).getMovie().getMovieId()){
                CartItem cartItem = cartItems.get(i);
                cartItem.setQuantity(cartItem.getQuantity()+1);
                cartItem.setTotalPrice(movie.getMoviePrice()*cartItem.getQuantity());
                cartItemService.addCartItem(cartItem);
            }
        }
        
        CartItem cartItem = new CartItem();
        cartItem.setMovie(movie);
        cartItem.setQuantity(1);
        cartItem.setTotalPrice(movie.getMoviePrice()*cartItem.getQuantity());
        cartItem.setCart(cart);
        cartItemService.addCartItem(cartItem);
    }
    
    @RequestMapping(value = "/remove/{movieId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem(@PathVariable(value = "movieId") int movieId){
        
        CartItem cartItem = cartItemService.getCartItemByMovieId(movieId);
        cartItemService.removeCartItem(cartItem);
    }
    
    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartId") int cartId){
        Cart cart = cartService.getCartById(cartId);
        cartItemService.removeCart(cart);
    }
    
    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request!")
    public void handleClientErrors (Exception e) {}

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Server Error!")
    public void handleServerErrors (Exception e) {}
}
