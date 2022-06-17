package com.its.gotcha.controller;

import com.its.gotcha.dto.BootDTO;
import com.its.gotcha.dto.ReviewDTO;
import com.its.gotcha.service.BootService;
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
    @Autowired
    private BootService bootService;

    @PostMapping("/save")
    public @ResponseBody List<ReviewDTO> save(@ModelAttribute ReviewDTO reviewDTO){
        reviewService.save(reviewDTO);
        List<ReviewDTO> reviewDTOList=reviewService.findAll(reviewDTO);
        return reviewDTOList;
    }
    @PostMapping("/idCheck")
    public @ResponseBody String idCheck(@ModelAttribute BootDTO bootDTO){
        String checkResult =bootService.idCheck(bootDTO);
        return checkResult;
    }
}
