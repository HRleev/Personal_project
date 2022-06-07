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

    public CompanyDTO login(CompanyDTO companyDTO) {
        CompanyDTO loginResult=sql.selectOne("Company.login",companyDTO);
        System.out.println("CompanyRepository.login");
        System.out.println("companyDTO = " + companyDTO);
        return loginResult;
    }
}
