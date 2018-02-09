package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Address;
import ru.dementev.furniture.entity.Application;
import ru.dementev.furniture.service.CustomerService;

/**
 * Created by adementev on 12.10.2017.
 */
@Controller
public class ApplicationController {
    @Autowired
    private CustomerService service;

    @RequestMapping(value = "/application", method = RequestMethod.GET)
    public ModelAndView getApplicationView(ModelAndView modelAndView) {
        modelAndView.setViewName("application/application");
        Application application = new Application();
        application.setAddress(new Address());
        modelAndView.addObject("application", application);
        return modelAndView;
    }

    @RequestMapping("/application/created")
    public ModelAndView createApplication(@ModelAttribute("application") Application application, ModelAndView modelAndView) {
        modelAndView.setViewName("application/created");
        service.set(application);
        return modelAndView;
    }

    @RequestMapping("/admin/application")
    public ModelAndView getListApplication(ModelAndView modelAndView) {
        modelAndView.setViewName("admin/application/list_application");
        modelAndView.addObject("application", service.getAll());
        return modelAndView;
    }

    @RequestMapping("/admin/application/{id}")
    public ModelAndView getApplicationItem(@PathVariable long id, ModelAndView modelAndView) {
        modelAndView.setViewName("admin/application/item_application");
        modelAndView.addObject("application", service.getById(id));
        return modelAndView;
    }
}
