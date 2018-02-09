package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Offer;
import ru.dementev.furniture.entity.Product;
import ru.dementev.furniture.service.OfferService;
import ru.dementev.furniture.service.ProductService;

import java.util.List;


/**
 * Created by adementev on 10.10.2017.
 */
@Controller
@RequestMapping("/gallery")
public class GalleryController {

    @Autowired
    private ProductService productService;
    @Autowired
    private OfferService offerService;


    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView gallery(ModelAndView modelAndView) {
        modelAndView.setViewName("gallery/gallery");
        List<Product> products = productService.getAll();
        List<Offer> offers = offerService.getByActive();
        modelAndView.addObject("products", products);
        modelAndView.addObject("offers", offers);
        return modelAndView;
    }

    @RequestMapping(value = "item/{id}", method = RequestMethod.GET)
    public ModelAndView galleryItem(@PathVariable long id, ModelAndView modelAndView) {
        modelAndView.setViewName("gallery/gallery_item");
        Product product = productService.getById(id);
        modelAndView.addObject("product", product);
        modelAndView.addObject("offers", offerService.getByActive());
        return modelAndView;
    }
}
