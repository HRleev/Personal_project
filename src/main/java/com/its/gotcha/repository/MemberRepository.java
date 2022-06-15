package com.its.gotcha.repository;

import com.its.gotcha.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public void save(MemberDTO memberDTO) {
        sql.insert("Member.save",memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO loginResult =sql.selectOne("Member.login",memberDTO);
        return loginResult;
    }

    public List<MemberDTO> findAll() {
        return sql.selectList("Member.findAll");
    }

    public int delete(long m_id) {
        return sql.delete("Member.delete",m_id);
    }

    public MemberDTO findById(long checkId) {
        return sql.selectOne("Member.findById",checkId);
    }

    public String duplicateCheck(String memberId) {
        return sql.selectOne("Member.duplicateCheck",memberId);
    }
}
