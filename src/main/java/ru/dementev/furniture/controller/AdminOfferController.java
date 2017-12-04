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
import ru.dementev.furniture.entity.Offer;
import ru.dementev.furniture.service.OfferService;

import javax.servlet.http.HttpSession;

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
    public ModelAndView getAdminAbout(ModelAndView modelAndView){
        modelAndView.setViewName("/admin/offer/setting_offers");
        modelAndView.addObject("offers",service.getAll());
        return modelAndView;
    }
    @RequestMapping(value = "add_item_offer",method = RequestMethod.GET)
    public ModelAndView addItemAbout(ModelAndView modelAndView,HttpSession session){
        modelAndView.setViewName("/admin/about/add_item_offer");
        modelAndView.addObject("about",new Offer());
        session.setMaxInactiveInterval(900);
        session.setAttribute("image", null);

        return modelAndView;
    }
    @RequestMapping(value = "add_item_offer_step2", method = RequestMethod.POST)
    public ModelAndView addItemAboutStep2(@ModelAttribute("offer")Offer offer, HttpSession session, ModelAndView modelAndView){
        modelAndView.setViewName("/admin/offer/add_item_offer_step2");
        Offer offer1 = (Offer) session.getAttribute("offer");
        if(offer1!= null){
            offer.setId(offer1.getId());
            offer.setImage(offer1.getImage());
        }
        session.setAttribute("offer", offer);


        return modelAndView;
    }

    @RequestMapping(value = "item_offer_added")
    public ModelAndView addedAboutItem(HttpSession session,ModelAndView modelAndView){
        modelAndView.setViewName("/admin/offer/added_offer");
        Offer offer = (Offer) session.getAttribute("offer");
        Image image = (Image) session.getAttribute("image");
        session.invalidate();
        if(image != null)
            offer.setImage(image);
        service.set(offer);
        modelAndView.addObject("offer",offer);

        return modelAndView;
    }
    @RequestMapping(value = "offer_item/delete/{id}")
    public ModelAndView deletePortfolioItem(@PathVariable long id, ModelAndView modelAndView){
        service.remove(id);
        modelAndView.setViewName("redirect:/admin/setting_offer");
        modelAndView.addObject("offers", service.getAll());
        return modelAndView;
    }

    @RequestMapping(value = "offer_item/{id}", method = RequestMethod.GET)
    public ModelAndView getAboutItem(@PathVariable long id, HttpSession session, ModelAndView modelAndView){
        modelAndView.setViewName("/admin/offer/offer_item");
        Offer offer =  service.getById(id);
        modelAndView.addObject("offer",offer);
        session.setMaxInactiveInterval(900);
        session.setAttribute("offer",offer);
        session.setAttribute("image",offer.getImage());
        return  modelAndView;
    }

}
