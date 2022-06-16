package com.its.gotcha.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyDTO {
    long c_id;
    String companyId;
    String companyPassword;
    String companyName;
    String companyEmail;
    String companyMobile;
    String companyNumber;
    String companyFileName;
    MultipartFile companyFile;
    String companyLocation;
    int bootCount;
}
