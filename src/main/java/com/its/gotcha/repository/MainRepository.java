package com.its.gotcha.repository;

import com.its.gotcha.dto.MenuDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MainRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public List<MenuDTO> findAll() {
        System.out.println("MainRepository.findAll");
        return  sql.selectList("Menu.findAll");
    }

    public List<MenuDTO> findLocation(String c_location) {
        System.out.println("MainRepository.findLocation");
        System.out.println("c_location = " + c_location);
        return sql.selectList("Menu.findLocation",c_location);
    }
}
