package ru.dementev.furniture.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.service.OfferService;

/**
 * Created by adementev on 09.10.2017.
 */
@Controller
@RequestMapping(value = "/about")
public class AboutController {
    @Autowired
    private OfferService offerService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getAbout(){
        ModelAndView modelAndView = new ModelAndView("/about/about");
        modelAndView.addObject("offers",offerService.getByActive());
        return modelAndView;
    }

    @RequestMapping(value = "more/{id}", method = RequestMethod.GET)
    public ModelAndView getAboutMoreInfo(@PathVariable long id){
        ModelAndView modelAndView = new ModelAndView("/about/aboutmoreinfo");
        modelAndView.addObject("offers",offerService.getByActive());
        return modelAndView;
    }

}
