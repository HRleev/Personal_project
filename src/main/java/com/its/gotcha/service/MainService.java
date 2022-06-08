package com.its.gotcha.service;

import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.repository.MainRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MainService {
    @Autowired
    private MainRepository mainRepository;

    public List<MenuDTO> findAll() {
        List<MenuDTO>menuDTOList=mainRepository.findAll();
        System.out.println("MainService.findAll");
        return menuDTOList;
    }
}
