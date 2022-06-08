package com.its.gotcha.controller;

import com.its.gotcha.service.BootService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/boot")
public class BootController {
    @Autowired
    private BootService bootService;
    @GetMapping("/save")
    public String save(){
        return "mainPages/boot";
    }

}
