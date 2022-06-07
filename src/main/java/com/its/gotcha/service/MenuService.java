package com.its.gotcha.service;

import com.its.gotcha.dto.MenuDTO;
import com.its.gotcha.repository.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Service
public class MenuService {
    @Autowired
    private MenuRepository menuRepository;

    public void save(MenuDTO menuDTO)throws IOException {
        MultipartFile menuFile = menuDTO.getC_menuFile();
        String c_menuFileName = menuFile.getOriginalFilename();
        c_menuFileName = System.currentTimeMillis() + "-" + c_menuFileName;
        menuDTO.setC_menuFileName(c_menuFileName);
        String savePath = "C:\\spring_img\\" + c_menuFileName;
        if (!menuFile.isEmpty()) {
            menuFile.transferTo(new File(savePath));
        }
        menuRepository.save(menuDTO);
    }
}
