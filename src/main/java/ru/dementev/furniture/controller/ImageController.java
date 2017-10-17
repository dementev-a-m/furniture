package ru.dementev.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.dementev.furniture.service.ImageService;

import java.awt.*;

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
}
