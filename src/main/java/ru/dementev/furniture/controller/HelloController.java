package ru.dementev.furniture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by adementev on 09.10.2017.
 */
@Controller
@RequestMapping("/")
public class HelloController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView printWelcome(Model model) {

        String message ="Hello World!";
        return new ModelAndView("index","message",message);

    }

}
