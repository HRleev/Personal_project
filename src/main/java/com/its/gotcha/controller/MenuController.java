package com.its.gotcha.controller;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    private MenuService menuService;

    @GetMapping("save")
    public String save(HttpSession session){

        return "companyPages/menuSave";
    }

    @PostMapping("/save")
    public String saveForm(@ModelAttribute MenuDTO menuDTO) throws IOException {
        menuService.save(menuDTO);
        return "redirect:/company/detail";
    }
    @GetMapping("/detail")
    public String findById(@RequestParam ("companyName") String companyName, Model model){
        MenuDTO menu=menuService.findById(companyName);
        model.addAttribute("menu",menu);
        return "companyPages/detail";
    }
    @GetMapping("/delete")
    public String delete(@RequestParam("companyName")String companyName){
        boolean deleteResult =menuService.delete(companyName);
        if(deleteResult){
            return "redirect:/company/detail";
        }else {
            return "companyPages/myPage";
        }
    }

}
