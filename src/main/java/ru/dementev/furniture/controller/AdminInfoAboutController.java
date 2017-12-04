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
import ru.dementev.furniture.service.InfoAboutService;

import javax.servlet.http.HttpSession;

/**
 * Created by Антон Дементьев on 18.11.2017.
 */
@Controller

//@Secured(value={"ROLE_ADMIN"})
@RequestMapping("/admin")
public class AdminInfoAboutController {

    @Autowired
    private InfoAboutService aboutService;

    @RequestMapping(value = "setting_about",method = RequestMethod.GET)
    public ModelAndView getAdminAbout(ModelAndView modelAndView){
        modelAndView.setViewName("/admin/about/setting_about");
        modelAndView.addObject("abouts",aboutService.getAll());
        return modelAndView;
    }
    @RequestMapping(value = "add_item_about",method = RequestMethod.GET)
    public ModelAndView addItemAbout(ModelAndView modelAndView,HttpSession session){
        modelAndView.setViewName("/admin/about/add_item_about");
        modelAndView.addObject("about",new InfoAbout());
        session.setMaxInactiveInterval(900);
        session.setAttribute("image", null);

        return modelAndView;
    }
    @RequestMapping(value = "add_item_about_step2", method = RequestMethod.POST)
    public ModelAndView addItemAboutStep2(@ModelAttribute("about")InfoAbout infoAbout, HttpSession session, ModelAndView modelAndView){
        modelAndView.setViewName("/admin/about/add_item_about_step2");
        InfoAbout infoAbout1 = (InfoAbout) session.getAttribute("about");
        if(infoAbout1!= null){
            infoAbout.setId(infoAbout1.getId());
            infoAbout.setImage(infoAbout1.getImage());
        }
        session.setAttribute("about", infoAbout);


        return modelAndView;
    }

    @RequestMapping(value = "item_about_added")
    public ModelAndView addedAboutItem(HttpSession session,ModelAndView modelAndView){
        modelAndView.setViewName("/admin/about/added_info_about");
        InfoAbout infoAbout = (InfoAbout) session.getAttribute("about");
        Image image = (Image) session.getAttribute("image");
        session.invalidate();
        if(image != null)
            infoAbout.setImage(image);
        aboutService.set(infoAbout);
        modelAndView.addObject("about",infoAbout);

        return modelAndView;
    }
    @RequestMapping(value = "about_item/delete/{id}")
    public ModelAndView deletePortfolioItem(@PathVariable long id, ModelAndView modelAndView){
        aboutService.remove(id);
        modelAndView.setViewName("redirect:/admin/setting_about");
        modelAndView.addObject("abouts", aboutService.getAll());
        return modelAndView;
    }

    @RequestMapping(value = "about_item/{id}", method = RequestMethod.GET)
    public ModelAndView getAboutItem(@PathVariable long id, HttpSession session, ModelAndView modelAndView){
        modelAndView.setViewName("/admin/about/about_item");
        InfoAbout about =  aboutService.getById(id);
        modelAndView.addObject("about",about);
        session.setMaxInactiveInterval(900);
        session.setAttribute("about",about);
        session.setAttribute("image",about.getImage());
        return  modelAndView;
    }

}
