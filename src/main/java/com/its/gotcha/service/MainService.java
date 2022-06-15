package com.its.gotcha.service;

import com.its.gotcha.dto.CompanyDTO;
import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.repository.MainRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MainService {
    @Autowired
    private MainRepository mainRepository;

    public List<MenuDTO> findAll() {
        List<MenuDTO>menuDTOList=mainRepository.findAll();
        return menuDTOList;
    }

    public List<MenuDTO> findLocation(String c_location) {
        List<MenuDTO>locationList=mainRepository.findLocation(c_location);
        return locationList;
    }

        public List<MenuDTO> lank() {
        List<MenuDTO> menuDTOList=mainRepository.lank();
        return menuDTOList;
    }

    public List<MenuDTO> search(String searchType, String q) {
        Map<String,String>searchParam=new HashMap<>();
        searchParam.put("type",searchType);
        searchParam.put("q",q);
        List<MenuDTO> menuDTOList=mainRepository.search(searchParam);
        return menuDTOList;
    }
}
