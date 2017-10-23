package ru.dementev.furniture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Антон Дементьев on 23.10.2017.
 */
@Controller
public class LoginController {
    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public ModelAndView loginPage(){
        return new ModelAndView("login/login");
    }
}
