package com.its.gotcha.repository;

import com.its.gotcha.dto.MenuDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void save(MenuDTO menuDTO) {
        sql.insert("Menu.save",menuDTO);
    }
}
