package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.repository.OfferRepository;
import ru.dementev.furniture.service.OfferService;

import java.util.List;

/**
 * Created by adementev on 10.10.2017.
 */

@Controller
@RequestMapping("/contact")
public class ContactController {
    @Autowired
    private OfferService offerService;
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getContactInfo(){
        ModelAndView modelAndView = new ModelAndView("contact/contact");
        modelAndView.addObject("offers",offerService.getByActive());
        return modelAndView;
    }
}
