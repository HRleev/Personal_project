package com.its.gotcha.service;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyService {
    @Autowired
    private CompanyRepository companyRepository;


    public void save(CompanyDTO companyDTO) {
        companyRepository.save(companyDTO);

    }

    public CompanyDTO login(CompanyDTO companyDTO) {
        CompanyDTO loginCompany=companyRepository.login(companyDTO);
        System.out.println("CompanyService.login");
        System.out.println("companyDTO = " + companyDTO);
        return loginCompany;
    }

    public List<CompanyDTO> findAll() {
        List<CompanyDTO>companyDTOList=companyRepository.findAll();
        return companyDTOList;
    }

    public boolean delete(long c_id) {
        int deleteResult=companyRepository.delete(c_id);
        if(deleteResult>0){
            return true;
        }else{
            return false;
        }

    }


    public CompanyDTO findById(long checkId) {
        return companyRepository.findById(checkId);
    }
}
