package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Image;
import ru.dementev.furniture.service.ImageService;


import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 * Created by adementev on 16.10.2017.
 */
@Controller
public class ImageController {
    @Autowired
    private ImageService service;
    @RequestMapping("/image/{id}")
    public @ResponseBody byte[] getImage(@PathVariable long id){
        byte[] image =  service.getById(id).getImage();
        return image;
    }
    @RequestMapping(value = "/load_image", method = RequestMethod.POST)
    public ModelAndView loadImage(@RequestParam("file") MultipartFile file,HttpSession session){
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/product_added");
        Image image = null;
        if(!file.isEmpty())
            try {
            image = new Image();
                byte[] imageBytes = file.getBytes();

            image.setImage(imageBytes);
//            service.set(image);


            } catch (IOException e) {
                e.printStackTrace();
            }
            session.setAttribute("image", image);
            return modelAndView;
    }
}
