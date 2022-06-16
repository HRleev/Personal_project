package com.its.gotcha.controller;

import com.its.gotcha.dto.BootDTO;
import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.dto.ReviewDTO;
import com.its.gotcha.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    private MenuService menuService;
    @Autowired
    private BootService bootService;
    @Autowired
    private ReviewService reviewService;
    @Autowired
    private CompanyService companyService;

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
    public String findById(@RequestParam ("companyName") String companyName,
                           Model model,HttpSession session){
        String memberName=(String)session.getAttribute("loginMemberName");
        List<BootDTO>bootDTOList =bootService.findAllMember(memberName);
        MenuDTO menu=menuService.findById(companyName);
        CompanyDTO companyDTO=companyService.findByDetail(companyName);
        ReviewDTO reviewDTO=new ReviewDTO();
        reviewDTO.setCompanyName(companyName);
        model.addAttribute("review",reviewService.findAll(reviewDTO));
        model.addAttribute("menu",menu);
        model.addAttribute("boot",bootDTOList);
        model.addAttribute("company",companyDTO);
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
