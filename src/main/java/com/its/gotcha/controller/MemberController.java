package com.its.gotcha.controller;

import com.its.gotcha.dto.BootDTO;
import com.its.gotcha.dto.MemberDTO;
import com.its.gotcha.service.BootService;
import com.its.gotcha.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;
    @Autowired
    private BootService bootService;


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
        return "mainPages/login";
    }
    @PostMapping("/login")
    public String loginForm(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
        MemberDTO loginMember =memberService.login(memberDTO);
        if(loginMember != null){
            model.addAttribute("loginResult",loginMember);
            session.setAttribute("loginMemberName",loginMember.getMemberName());
            session.setAttribute("loginId",loginMember.getM_id());
            return "redirect:/main/main";
        }
        else {
            return "mainPages/login";
        }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
       session.invalidate();
       return "mainPages/main";
    }
    @GetMapping("/findAll")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList=memberService.findAll();
        model.addAttribute("memberList",memberDTOList);
        return "memberPages/memberList";
    }
    @PostMapping("/delete")
    public String delete(@RequestParam("m_id")long m_id, Model model){
        boolean deleteResult=memberService.delete(m_id);
        if(deleteResult){
            return "redirect:/member/findAll";
        }else{
            return "memberPages/memberList";
        }
    }
    @GetMapping("/detail")
    public String findById(Model model,HttpSession session){
        long checkId=(long)session.getAttribute("loginId");
//        String memberName=(String)session.getAttribute("loginMemberId");
        MemberDTO memberDTO=memberService.findById(checkId);
//        BootDTO boot=bootService.findById(memberName);
        model.addAttribute("member",memberDTO);
//        model.addAttribute("boot",bootDTO);
        return "/memberPages/myPage";
    }
}
