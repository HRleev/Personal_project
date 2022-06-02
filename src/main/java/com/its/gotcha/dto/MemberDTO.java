package com.its.gotcha.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {
    Long m_id;
    String memberId;
    String memberPassword;
    String memberName;
    String memberEmail;
    String memberMobile;
    String MemberLocation;
}

