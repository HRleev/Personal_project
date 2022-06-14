package com.its.gotcha.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class lankDTO {
    long c_id;
    String companyId;
    String companyPassword;
    String companyName;
    String companyEmail;
    String companyMobile;
    String companyNumber;
    String companyLocation;
    int bootCount;
    long b_id;
    String memberName;
    int bootStrength;
    Date bootDate;


}
