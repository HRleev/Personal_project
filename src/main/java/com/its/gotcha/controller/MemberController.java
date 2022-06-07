package com.its.gotcha.controller;

import com.its.gotcha.dto.MemberDTO;
import com.its.gotcha.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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
    @GetMapping("/login")
    public String login(){
        return "/memberPages/login";
    }
    @PostMapping("/login")
    public String loginForm(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
        MemberDTO loginMember =memberService.login(memberDTO);
        if(loginMember != null){
            model.addAttribute("loginResult",loginMember);
            session.setAttribute("loginMemberId",loginMember.getMemberId());
            session.setAttribute("loginId",loginMember.getM_id());
            return "mainPages/main";
        }
        else {
            return "memberPages/login";
        }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
       session.invalidate();
       return "mainPages/main";
    }
}
