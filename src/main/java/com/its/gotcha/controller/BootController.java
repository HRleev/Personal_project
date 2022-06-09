package com.its.gotcha.controller;

import com.its.gotcha.dto.BootDTO;
import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.service.BootService;
import com.its.gotcha.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/boot")
public class BootController {
    @Autowired
    private BootService bootService;
    @Autowired
    private MenuService menuService;
    @GetMapping("/save")
    public String save(@RequestParam("companyName")String companyName,Model model){
        MenuDTO menuDTO =menuService.findById(companyName);
        model.addAttribute("menu",menuDTO);
        return "mainPages/boot";
    }
    @PostMapping("/save")
    public String saveForm(@ModelAttribute BootDTO bootDTO, Model model){
        bootService.save(bootDTO);
        return "memberPages/myPage";
    }

}
