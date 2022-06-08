package com.its.gotcha.controller;

import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/main")
public class MainController {
    @Autowired
    private MainService mainService;
    @GetMapping("/main")
    public String main (Model model){
        List<MenuDTO>menuDTOList=mainService.findAll();
        model.addAttribute("menuList",menuDTOList);
        System.out.println("MainController.main");
        System.out.println("model = " + model);
        return "/mainPages/main";
    }

}
