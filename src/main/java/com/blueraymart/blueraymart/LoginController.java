/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blueraymart.blueraymart;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author NanoX
 */
@Controller
public class LoginController {
    
    @RequestMapping("/login")
    public String login(@RequestParam (value = "error", required = false) String error,
                        @RequestParam (value = "logout", required = false) String logout, Model model){
        
        if(error != null){
            model.addAttribute("error", "Invalid Username or Password");
        }
        
        if(logout != null ){
            model.addAttribute("msg", "You have been logout successfully!");
        }
        
        return "login";
    }
}
