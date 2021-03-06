package com.its.gotcha.controller;

import com.its.gotcha.dto.BootDTO;

import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.service.BootService;
import com.its.gotcha.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


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
    public String saveForm(@ModelAttribute BootDTO bootDTO){
        bootService.save(bootDTO);
        return "redirect:/member/detail";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute BootDTO bootDTO){
        bootService.update(bootDTO);
        return "redirect:/member/detail";
    }

}
