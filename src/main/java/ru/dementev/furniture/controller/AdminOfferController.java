package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Offer;
import ru.dementev.furniture.service.OfferService;

/**
 * Created by Антон Дементьев on 08.11.2017.
 */
@Controller
//@Secured(value={"ROLE_ADMIN"})
@RequestMapping("/admin")
public class AdminOfferController {
    @Autowired
    private OfferService service;
    @RequestMapping(value = "setting_offer",method = RequestMethod.GET)
    public ModelAndView getSettingProductsView(@ModelAttribute("product")Offer offer){
        ModelAndView modelAndView = new ModelAndView("admin/offer/setting_offer");
        modelAndView.addObject("offers", service.getAll());

        return modelAndView;
    }

}
