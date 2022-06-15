package com.its.gotcha.controller;

import com.its.gotcha.dto.BootDTO;
import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.service.BootService;
import com.its.gotcha.service.CompanyService;
import com.its.gotcha.service.MenuService;
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
    @Autowired
    private MenuService menuService;
    @Autowired
    private BootService bootService;

    @GetMapping("/save")
    public String save() {
        return "/companyPages/save";
    }

    @PostMapping("/save")
    public String saveForm(@ModelAttribute CompanyDTO companyDTO) {
        companyService.save(companyDTO);
        return "mainPages/main";
    }

    @GetMapping("/login")
    public String login() {
        return "mainPages/login";
    }

    @PostMapping("/login")
    public String loginForm(@ModelAttribute CompanyDTO companyDTO, Model model, HttpSession session) {
        CompanyDTO loginCompany = companyService.login(companyDTO);
        if (loginCompany != null) {
            model.addAttribute(companyDTO);
            session.setAttribute("loginCompanyName", loginCompany.getCompanyName());
            session.setAttribute("loginId", loginCompany.getC_id());
            return "redirect:/main/main";
        } else {
            return "mainPages/login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "/mainPages/main";
    }

    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<CompanyDTO> companyDTOList = companyService.findAll();
        model.addAttribute("companyList", companyDTOList);
        return "/companyPages/companyList";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("c_id") long c_id) {
        boolean deleteResult = companyService.delete(c_id);
        if (deleteResult) {
            return "redirect:/company/findAll";
        } else {
            return "/companyPages/companyList";
        }
    }

    @GetMapping("/detail")
    public String findById(Model model, HttpSession session) {
        long checkId = (Long) session.getAttribute("loginId");
        String companyName = (String) session.getAttribute("loginCompanyName");
        CompanyDTO companyDTO = companyService.findById(checkId);
        MenuDTO menu = menuService.findById(companyName);
        List<BootDTO> bootDTOList = bootService.findAll(companyName);
        model.addAttribute("company", companyDTO);
        model.addAttribute("menu", menu);
        model.addAttribute("bootList",bootDTOList);
        return "/companyPages/myPage";
    }
    @PostMapping("/duplicate_Check")
    public @ResponseBody String duplicateCheck(@RequestParam("companyId")String companyId){
        String checkResult=companyService.duplicateCheck(companyId);
        return checkResult;
    }
    @PostMapping("/dup-check-Num")
    public @ResponseBody String dup_check_Num(@RequestParam("companyNumber")String companyNumber){
        String checkResult=companyService.dup_check_Num(companyNumber);
        return checkResult;
    }

}
