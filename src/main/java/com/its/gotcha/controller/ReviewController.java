package com.its.gotcha.controller;

import com.its.gotcha.dto.ReviewDTO;
import com.its.gotcha.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewController {
    @Autowired
    private ReviewService reviewService;
    @PostMapping("/save")
    public String save(@ModelAttribute ReviewDTO reviewDTO){
        reviewService.save(reviewDTO);
        return "index";
    }
}
