package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Product;
import ru.dementev.furniture.service.ProductService;

import java.util.List;


/**
 * Created by adementev on 10.10.2017.
 */
@Controller
@RequestMapping("/portfolio")
public class PortfolioController {


    @Autowired
    private ProductService service;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getPotfolio(){

        List<Product> list =  service.getAll();
        return  new ModelAndView("portfolio/portfolio", "values",list);
    }

    @RequestMapping(value = "item/{id}", method = RequestMethod.GET)
    public ModelAndView getPotfolioItem(@PathVariable long id){

        Product product =  service.getById(id);
        return  new ModelAndView("portfolio/portfolio_item", "product",product);
    }
}
