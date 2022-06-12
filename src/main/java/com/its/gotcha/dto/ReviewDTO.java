package com.its.gotcha.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.security.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDTO {
    long r_id;
    String companyName;
    String memberName;
    String reviewContents;
    String reviewTime;
}
