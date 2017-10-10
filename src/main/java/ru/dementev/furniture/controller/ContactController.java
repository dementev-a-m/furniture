package ru.dementev.furniture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by adementev on 10.10.2017.
 */

@Controller
@RequestMapping("/contact")
public class ContactController {
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getContactInfo(){

        return new ModelAndView("contact/contact");
    }
}
