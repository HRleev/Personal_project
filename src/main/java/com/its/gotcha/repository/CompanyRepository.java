package com.its.gotcha.repository;

import com.its.gotcha.dto.CompanyDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    public List<CompanyDTO> findAll() {
        return sql.selectList("Company.findAll");
    }

    public int delete(long c_id) {
        return sql.delete("Company.delete",c_id);
    }


    public CompanyDTO findById(long checkId) {
        return sql.selectOne("Company.findById",checkId);
    }
}
