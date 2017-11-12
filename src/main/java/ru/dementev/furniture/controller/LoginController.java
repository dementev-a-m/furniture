package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.User;
import ru.dementev.furniture.service.UserService;

/**
 * Created by Антон Дементьев on 23.10.2017.
 */
@Controller
public class LoginController {
//    @Autowired
//    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(String error, String logout,ModelAndView modelAndView ) {
         modelAndView.setViewName("login/login");
        if (error != null) {
            modelAndView.addObject("error", "Username or password is incorrect.");
        }

        if (logout != null) {
            modelAndView.addObject("message", "Logged out successfully.");
        }

        return modelAndView;
    }
    @RequestMapping(value = "/logout")
    public String logout(){
        return "redirect:/";
    }




}
