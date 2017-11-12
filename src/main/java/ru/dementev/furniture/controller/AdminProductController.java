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
import ru.dementev.furniture.service.ImageService;
import ru.dementev.furniture.service.ProductService;


import javax.servlet.http.HttpSession;
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
    @Autowired
    private ImageService imageService;

    @RequestMapping(value = {"product_add"},method = RequestMethod.GET)
    public ModelAndView getAddProductView(@ModelAttribute("product")Product product,ModelAndView modelAndView, HttpSession session){
         modelAndView.setViewName("admin/product/add_product");
        if(product == null)
            product = new Product();
        session.setMaxInactiveInterval(900);
        session.setAttribute("image", null);

        modelAndView.addObject("product", product);

        if(typeList.size() == 0)
            createdListType();
        modelAndView.addObject("typeList",typeList);

        return modelAndView;
    }

    @RequestMapping(value = "setting_product",method = RequestMethod.GET)
    public ModelAndView getSettingProductsView(@ModelAttribute("product")Product product, ModelAndView modelAndView){
        modelAndView.setViewName("admin/product/setting_product");
        modelAndView.addObject("products", productService.getAll());

        return modelAndView;
    }
    @RequestMapping(value = "add_product_step2", method = RequestMethod.POST)
    public ModelAndView getAddProductStep2(@ModelAttribute("product")Product product,HttpSession session,ModelAndView modelAndView){
        modelAndView.setViewName("admin/product/add_product_step2");
        Product product1 = (Product) session.getAttribute("product");
        if(product1!= null){
            product.setId(product1.getId());
            product.setImage(product1.getImage());
        }
        session.setAttribute("product", product);


        return modelAndView;
    }
    @RequestMapping("product_added")
    public ModelAndView createdProduct(HttpSession session,ModelAndView modelAndView){
        modelAndView.setViewName("admin/product/added_product");
        Product product = (Product) session.getAttribute("product");
        Image image = (Image) session.getAttribute("image");
        session.invalidate();
        if(image != null)
            product.setImage(image);
        productService.set(product);
        modelAndView.addObject("product",product);

        return modelAndView;
    }

    @RequestMapping(value = "product_item/{id}", method = RequestMethod.GET)
    public ModelAndView getPotfolioItem(@PathVariable long id, HttpSession session, ModelAndView modelAndView){
        modelAndView.setViewName("admin/product/product_item");
        Product product =  productService.getById(id);
        modelAndView.addObject("product",product);
        session.setMaxInactiveInterval(900);
        session.setAttribute("product",product);
        session.setAttribute("image",product.getImage());
        return  modelAndView;
    }

    @RequestMapping(value = "product_item/delete/{id}")
    public ModelAndView deletePortfolioItem(@PathVariable long id,ModelAndView modelAndView){
        productService.remove(id);
        modelAndView.setViewName("redirect:/admin/setting_product");
        modelAndView.addObject("products", productService.getAll());
        return modelAndView;
    }

    @RequestMapping( method = RequestMethod.GET)
    public ModelAndView admin(ModelAndView modelAndView) {
        modelAndView.setViewName("admin/admin");
        return modelAndView;
    }
    private void createdListType(){
        typeList.put("Kitchen","Кухня");
        typeList.put("Cupboard","Шкаф");
    }


}
