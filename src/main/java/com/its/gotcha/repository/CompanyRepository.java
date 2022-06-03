package com.its.gotcha.repository;

import com.its.gotcha.dto.CompanyDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public void save(CompanyDTO companyDTO) {
        sql.insert("Company.save",companyDTO);
    }
}
