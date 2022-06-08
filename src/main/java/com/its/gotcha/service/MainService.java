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

    public List<MenuDTO> findLocation(String c_location) {
        List<MenuDTO>locationList=mainRepository.findLocation(c_location);
        System.out.println("MainService.findLocation");
        System.out.println("c_location = " + c_location);
        return locationList;
    }
}
