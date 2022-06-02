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
    long c_id;
    String memberId;
    String reviewContents;
    Timestamp reviewTime;
}
