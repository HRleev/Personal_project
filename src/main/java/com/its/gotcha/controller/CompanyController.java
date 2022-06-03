package com.its.gotcha.controller;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/company")
public class CompanyController {
    @Autowired
    private CompanyService companyService;


    @GetMapping("/save")
    public String save() {
        return "/companyPages/save";
    }

    @PostMapping("/save")
    public String saveForm(@ModelAttribute CompanyDTO companyDTO) {
        companyService.save(companyDTO);
        return "/mainPages/main";
    }
}
