package com.its.gotcha.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class
MenuDTO {
    long m_id;
    String companyName;
    String c_menu;
    String c_introduction;
    MultipartFile c_menuFile;
    String c_menuFileName;
    String c_location;
}
