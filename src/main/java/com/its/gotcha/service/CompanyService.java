package com.its.gotcha.service;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyService {
    @Autowired
    private CompanyRepository companyRepository;


    public void save(CompanyDTO companyDTO) {
        companyRepository.save(companyDTO);

    }
}
