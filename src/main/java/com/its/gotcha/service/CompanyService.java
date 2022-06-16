package com.its.gotcha.service;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class CompanyService {
    @Autowired
    private CompanyRepository companyRepository;


    public void save(CompanyDTO companyDTO) throws IOException {
        MultipartFile companyFile = companyDTO.getCompanyFile();
        String CompanyFileName = companyFile.getOriginalFilename();
        CompanyFileName = System.currentTimeMillis() + "-" + CompanyFileName;
        companyDTO.setCompanyFileName(CompanyFileName);
        String savePath = "C:\\spring_img\\" + CompanyFileName;
        if (!companyFile.isEmpty()) {
            companyFile.transferTo(new File(savePath));
        }
        companyRepository.save(companyDTO);
    }


    public CompanyDTO login(CompanyDTO companyDTO) {
        CompanyDTO loginCompany=companyRepository.login(companyDTO);

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

    public String duplicateCheck(String companyId) {
        String checkResult=companyRepository.duplicateCheck(companyId);
        if(checkResult==null){
            return "ok";
        }else{
            return "no";
        }
    }

    public String dup_check_Num(String companyNumber) {
        String checkResult=companyRepository.dup_check_Num(companyNumber);
        if(checkResult==null){
            return "ok";
        }else{
            return "no";
        }
    }

    public CompanyDTO findByDetail(String companyName) {
        return companyRepository.findByDetail(companyName);
    }
}
