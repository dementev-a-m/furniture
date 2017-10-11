package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Product;
import ru.dementev.furniture.service.ProductService;

import java.util.List;

/**
 * Created by adementev on 09.10.2017.
 */
@Controller
@RequestMapping("/")
public class MainController {
    @Autowired
    private ProductService productService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView printWelcome(Model model) {
        List<Product> list =  productService.getAll();
        return new ModelAndView("index","values",productService);

    }

}