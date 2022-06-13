package com.its.gotcha.controller;

import com.its.gotcha.dto.ReviewDTO;
import com.its.gotcha.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/review")
public class ReviewController {
    @Autowired
    private ReviewService reviewService;

    @PostMapping("/save")
    public @ResponseBody List<ReviewDTO> save(@ModelAttribute ReviewDTO reviewDTO){
        reviewService.save(reviewDTO);
        List<ReviewDTO> reviewDTOList=reviewService.findAll(reviewDTO);
        return reviewDTOList;
    }
//    @PostMapping("update")
//    public String update(@ModelAttribute ReviewDTO reviewDTO){
//        reviewService.update(reviewDTO);
//        return "redirect:/review/save";
//    }
}
