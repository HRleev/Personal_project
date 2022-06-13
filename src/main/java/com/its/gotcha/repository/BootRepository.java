package com.its.gotcha.repository;

import com.its.gotcha.dto.BootDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository



public class BootRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public void save(BootDTO bootDTO) {
        sql.insert("Boot.save",bootDTO);
    }

    public List<BootDTO> findAll(String loginCompanyName) {
        return sql.selectList("Boot.findAll",loginCompanyName);
    }

    public BootDTO findById(String memberName) {
        return sql.selectOne("Boot.findById",memberName);
    }

    public List<BootDTO> findAllMember(String memberName) {
        return sql.selectList("Boot.findAllMember",memberName);
    }

    public String idCheck(String memberName) {
        return sql.selectOne("Boot.idCheck",memberName);
    }
}
