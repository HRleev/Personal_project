package com.its.gotcha.controller;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

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
    @GetMapping("/login")
    public String login(){
        return "mainPages/login";
    }
    @PostMapping("/login")
    public String loginForm(@ModelAttribute CompanyDTO companyDTO , Model model, HttpSession session){
        CompanyDTO loginCompany = companyService.login(companyDTO);
        System.out.println("CompanyController.loginForm");
        System.out.println(loginCompany);
        if(loginCompany!=null){
            model.addAttribute(companyDTO);
            session.setAttribute("loginCompanyId",loginCompany.getCompanyId());
            session.setAttribute("loginId",loginCompany.getC_id());
            return "mainPages/main";
        }
        else {
            return "mainPages/login";
        }
    }@GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "mainPages/main";
    }
    @GetMapping("/findAll")
    public String findAll(Model model){
        List<CompanyDTO>companyDTOList=companyService.findAll();
        model.addAttribute("companyList",companyDTOList);
        return "companyPages/companyList";
    }
    @PostMapping("/delete")
    public String delete(@RequestParam("c_id")long c_id,Model model){
        boolean deleteResult=companyService.delete(c_id);
        if(deleteResult){
            return "redirect:/company/findAll";
        }else{
            return "companyPages/companyList";
        }
    }
    @GetMapping("/detail")
    public String findById( Model model,HttpSession session){
        long checkId=(Long) session.getAttribute("loginId");
        CompanyDTO companyDTO =companyService.findById(checkId);
        model.addAttribute("company",companyDTO);
        return "companyPages/myPage";
    }

}
