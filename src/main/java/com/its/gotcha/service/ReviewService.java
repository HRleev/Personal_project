package com.its.gotcha.service;

import com.its.gotcha.dto.ReviewDTO;
import com.its.gotcha.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {
    @Autowired
    private ReviewRepository reviewRepository;

    public void save(ReviewDTO reviewDTO) {
        reviewRepository.save(reviewDTO);
    }

    public List<ReviewDTO> findAll(ReviewDTO reviewDTO) {
        return reviewRepository.findAll(reviewDTO);
    }

    public void update(ReviewDTO reviewDTO) {
        reviewRepository.update(reviewDTO);
    }
}
