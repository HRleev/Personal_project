package com.its.gotcha.service;

import com.its.gotcha.dto.MemberDTO;
import com.its.gotcha.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public void save(MemberDTO memberDTO) {
        memberRepository.save(memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO loginMember =memberRepository.login(memberDTO);
        return loginMember;

    }

    public List<MemberDTO> findAll() {
        List<MemberDTO>memberDTOList=memberRepository.findAll();
        return memberDTOList;
    }

    public boolean delete(long m_id) {
        int deleteResult=memberRepository.delete(m_id);
        if(deleteResult >0){
            return true;
        }else{
            return false;
        }
    }
}
