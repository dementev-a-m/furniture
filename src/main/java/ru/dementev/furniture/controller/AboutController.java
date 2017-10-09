package ru.dementev.furniture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by adementev on 09.10.2017.
 */
@Controller
@RequestMapping("/about")
public class AboutController {
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getAbout(){
        return new ModelAndView("about/about","about","Информация о компании");
    }
}
