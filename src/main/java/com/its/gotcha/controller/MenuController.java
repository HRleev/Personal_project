package com.its.gotcha.controller;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
        return "redirect:/main/main";
    }

}
