package com.its.gotcha.controller;

import com.its.gotcha.dto.MemberDTO;
import com.its.gotcha.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;


    @GetMapping("/save")
    public String save() {
        return "/memberPages/save";
    }

    @PostMapping("/save")
    public String saveForm(@ModelAttribute MemberDTO memberDTO) {
        memberService.save(memberDTO);
        return "/mainPages/main";
    }
}
