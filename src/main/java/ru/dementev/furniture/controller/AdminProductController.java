package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Image;
import ru.dementev.furniture.entity.Product;
import ru.dementev.furniture.service.ProductService;


import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created by adementev on 17.10.2017.
 */
@Controller

//@Secured(value={"ROLE_ADMIN"})
@RequestMapping("/admin")
public class AdminProductController {
    Map<String,String> typeList = new LinkedHashMap<>();

    @Autowired
    private ProductService productService;

    @RequestMapping(value = {"product_add"},method = RequestMethod.GET)
    public ModelAndView getAddProductView(@ModelAttribute("product")Product product,ModelAndView modelAndView){
         modelAndView.setViewName("admin/add_product");
        if(product == null)
            product = new Product();

        product.setImage((Image) modelAndView.getModelMap().get("image"));
        System.out.println("Создается новый продукт");
        modelAndView.addObject("product", product);
        if(product.getImage() != null)
            System.out.println("Id в product add"+product.getImage().getId());
        if(typeList.size() == 0)
            createdListType();
        modelAndView.addObject("typeList",typeList);

        return modelAndView;
    }

    @RequestMapping(value = "setting_product",method = RequestMethod.GET)
    public ModelAndView getSettingProductsView(){
        ModelAndView modelAndView = new ModelAndView("admin/setting_product");
        modelAndView.addObject("products", productService.getAll());

        return modelAndView;
    }

    @RequestMapping("product_added")
    public ModelAndView createdProduct(@ModelAttribute("product")Product product,@ModelAttribute("image")Image image ){
        ModelAndView modelAndView = new ModelAndView("application/created");
        if (image!= null) {
            product.setImage(image);
            System.out.println("Image != nu;;");
        }
        productService.set(product);
        return modelAndView;
    }

    @RequestMapping(value = "product_item/{id}", method = RequestMethod.GET)
    public ModelAndView getPotfolioItem(@PathVariable long id){
        ModelAndView modelAndView = new ModelAndView("admin/product_item");
        Product product =  productService.getById(id);
        modelAndView.addObject("product",product);

        return  modelAndView;
    }

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
