package com.its.gotcha.service;

import com.its.gotcha.dto.BootDTO;
import com.its.gotcha.repository.BootRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BootService {
    @Autowired
    private BootRepository bootRepository;
    public void save(BootDTO bootDTO) {
        bootRepository.save(bootDTO);
    }

    public List<BootDTO> findAll(String loginCompanyName) {
        List<BootDTO>bootDTOList=bootRepository.findAll(loginCompanyName);
        return bootDTOList;
    }

    public BootDTO findById(String memberName) {
        return bootRepository.findById(memberName);
    }


    public List<BootDTO> findAllMember(String memberName) {
        List<BootDTO> bootDTOList=bootRepository.findAllMember(memberName);
        return bootDTOList;
    }

    public String idCheck(BootDTO bootDTO) {
        List<BootDTO> checkResult=bootRepository.idCheck(bootDTO);
        if(checkResult.size()==0){
            return "no";
        }else{
            return "ok";
        }
    }
}
