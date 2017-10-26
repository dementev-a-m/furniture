package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Product;
import ru.dementev.furniture.service.ProductService;


import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created by adementev on 17.10.2017.
 */
@Controller

@RequestMapping("/admin")

public class AdminProductController {
    Map<String,String> typeList = new LinkedHashMap<>();

    @Autowired
    private ProductService productService;
    @Secured(value={"ROLE_ADMIN"})
    @RequestMapping(value = "product_add",method = RequestMethod.GET)
    public ModelAndView getAddProductView(){
        ModelAndView modelAndView = new ModelAndView("admin/add_product");
        modelAndView.addObject("product", new Product());
        if(typeList.size() == 0)
            createdListType();
        modelAndView.addObject("typeList",typeList);

        return modelAndView;
    }
    @Secured(value={"ROLE_ADMIN"})
    @RequestMapping(value = "setting_product",method = RequestMethod.GET)
    public ModelAndView getSettingProductsView(){
        ModelAndView modelAndView = new ModelAndView("admin/setting_product");
        modelAndView.addObject("products", productService.getAll());

        return modelAndView;
    }
    @Secured(value={"ROLE_ADMIN"})
    @RequestMapping("product_added")
    public ModelAndView createdProduct(@ModelAttribute("product")Product product ){
        ModelAndView modelAndView = new ModelAndView("application/created");
        productService.set(product);
        return modelAndView;
    }
    @Secured(value={"ROLE_ADMIN"})
    @RequestMapping(value = "product_item/{id}", method = RequestMethod.GET)
    public ModelAndView getPotfolioItem(@PathVariable long id){
        ModelAndView modelAndView = new ModelAndView("admin/product_item");
        Product product =  productService.getById(id);
        modelAndView.addObject("product",product);

        return  modelAndView;
    }

    @Secured(value={"ROLE_ADMIN"})
    @RequestMapping(value = "product_item/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deletePortfolioItem(@PathVariable long id){
        productService.remove(id);
        ModelAndView modelAndView = new ModelAndView("admin/setting_product");
        modelAndView.addObject("products", productService.getAll());

        return modelAndView;
    }

    @RequestMapping( method = RequestMethod.GET)
    public ModelAndView admin() {
        return new ModelAndView("admin/admin");
    }
    private void createdListType(){
        typeList.put("Kitchen","Кухня");
        typeList.put("Cupboard","Шкаф");
    }


}
