package ru.dementev.furniture.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Image;
import ru.dementev.furniture.entity.InfoAbout;
import ru.dementev.furniture.entity.Product;
import ru.dementev.furniture.service.InfoAboutService;
import ru.dementev.furniture.service.OfferService;

import javax.servlet.http.HttpSession;

/**
 * Created by adementev on 09.10.2017.
 */
@Controller
public class AboutController {
    @Autowired
    private OfferService offerService;
    @Autowired
    private InfoAboutService aboutService;

    @RequestMapping(value = "/about",method = RequestMethod.GET)
    public ModelAndView getAbout(ModelAndView modelAndView){
        modelAndView.setViewName("/about/about");
        modelAndView.addObject("offers",offerService.getByActive());
        modelAndView.addObject("abouts",aboutService.getAll());
        return modelAndView;
    }

    @RequestMapping(value = "/about/more/{id}", method = RequestMethod.GET)
    public ModelAndView getAboutMoreInfo(@PathVariable long id,ModelAndView modelAndView){
        modelAndView.setViewName("/about/item_about");
        modelAndView.addObject("offers",offerService.getByActive());
        modelAndView.addObject("about",aboutService.getById(id));
        return modelAndView;
    }

}
