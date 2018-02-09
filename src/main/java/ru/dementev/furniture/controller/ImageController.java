package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ru.dementev.furniture.entity.Image;
import ru.dementev.furniture.service.ImageService;

import javax.servlet.http.HttpServletRequest;
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
    public
    @ResponseBody
    byte[] getImage(@PathVariable long id) {
        byte[] image = service.getById(id).getImage();
        return image;
    }

    @RequestMapping(value = "/load_image", method = RequestMethod.POST)
    public ModelAndView loadImage(@RequestParam("file") MultipartFile file, HttpSession session, ModelAndView modelAndView, HttpServletRequest request) {
        String[] referers = request.getHeader("referer").split("admin/");
        switch (referers[1]) {
            case "add_item_about_step2":
                modelAndView.setViewName("redirect:/admin/item_about_added");
                break;

            case "add_product_step2":
                modelAndView.setViewName("redirect:/admin/product_added");
                break;
            case "add_item_offer_step2":
                modelAndView.setViewName("redirect:/admin/item_offer_added");
                break;

            default:
                break;
        }


        Image image = (Image) session.getAttribute("image");
        if (image == null)
            image = new Image();
        if (!file.isEmpty())
            try {
                byte[] imageBytes = file.getBytes();

                image.setImage(imageBytes);

            } catch (IOException e) {
                e.printStackTrace();
            }
        session.setAttribute("image", image);
        return modelAndView;
    }
}
