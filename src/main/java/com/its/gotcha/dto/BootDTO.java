package com.its.gotcha.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BootDTO {
    long b_id;
    String companyName;
    String memberName;
    int bootStrength;
    Timestamp bootDate;
}

