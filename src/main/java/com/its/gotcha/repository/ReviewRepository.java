package com.its.gotcha.repository;

import com.its.gotcha.dto.ReviewDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReviewRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void save(ReviewDTO reviewDTO) {
        sql.insert("Review.save",reviewDTO);
    }

    public List<ReviewDTO> findAll(ReviewDTO reviewDTO) {
        List<ReviewDTO> ret= sql.selectList("Review.findAll",reviewDTO);

        System.out.println(ret);
        return ret;
    }

    public void update(ReviewDTO reviewDTO) {
        sql.update("Review.update",reviewDTO);
    }
}
