package com.its.gotcha.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LankDTO {
    long m_id;
    String companyName;
    String c_menu;
    String c_introduction;
    MultipartFile c_menuFile;
    String c_menuFileName;
    String c_location;
    int bootCount;
    long b_id;
    String memberName;
    int bootStrength;
    Date bootDate;


}
