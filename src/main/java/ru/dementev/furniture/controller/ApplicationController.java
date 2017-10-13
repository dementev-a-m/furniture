package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Customer;
import ru.dementev.furniture.service.CustomerService;

/**
 * Created by adementev on 12.10.2017.
 */
@Controller
@RequestMapping("/application")
public class ApplicationController {
    @Autowired
    private CustomerService service;
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getApplicationView(){
        ModelAndView modelAndView = new ModelAndView("application/application");
        modelAndView.addObject("customer", new Customer());
        return modelAndView;
    }

    @RequestMapping("/created")
    public ModelAndView createApplication(@ModelAttribute("customer")Customer customer ){
    ModelAndView modelAndView = new ModelAndView("application/created");
        service.set(customer);
    return modelAndView;
    }
}
