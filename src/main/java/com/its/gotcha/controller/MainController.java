package com.its.gotcha.controller;

import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/main")
public class MainController {
    @Autowired
    private MainService mainService;
    @GetMapping("/main")
    public String findALl (Model model){
        List<MenuDTO>menuDTOList=mainService.findAll();
        model.addAttribute("menuList",menuDTOList);
        return "/mainPages/main";
    }
    @GetMapping("/location")
    public String location(@RequestParam("c_location") String c_location, Model model){
        List<MenuDTO>locationList=mainService.findLocation(c_location);
        model.addAttribute("locationList",locationList);
        return "mainPages/location";
    }

}
