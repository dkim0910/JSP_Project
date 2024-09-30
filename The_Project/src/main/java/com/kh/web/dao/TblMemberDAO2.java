package com.kh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;
import com.kh.web.beans.TblMember;

public class TblMemberDAO2 {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	 public TblMemberDAO2() {
		 sqlSession = factory.openSession(true);
	 }
	
	// id 중복체크
	 public boolean checkId(String USER_id) {
		 boolean result = false;
		 int cnt = 0;
		 cnt = sqlSession.selectOne("Member.checkId", USER_id);
		 if(cnt == 1) {
			 result = true;
		 }
		 
		 return result;
	 }
	
	// 회원가입
	 public boolean join(TblMember member) {
		 boolean result = false;
		 if(sqlSession.insert("Member.join", member) == 1) {
			 result = true;
		 }
		 return result;
	 }
	
	 public TblMember login(String USER_id, String userpw) {
		 TblMember member = null;
		 HashMap<String, String> datas = new HashMap<>();
		 datas.put("USER_id", USER_id);
		 datas.put("userpw", userpw);
		 
		 member = sqlSession.selectOne("Member.login",datas);
		 
		 
		 return member;
		 
		 
	 }
	 
	//아이디 찾기
	public TblMember searchByname(String username, String userphone) {
		 Map<String, String> params = new HashMap<>();
		 params.put("username", username);
		 params.put("userphone", userphone);
	
		return (TblMember) sqlSession.selectOne("Member.searchByname", params);		 
 
	}
	 //비밀번호 찾기
	public TblMember searchByphone(String username, String userphone) {
	    TblMember member = new TblMember();
	    member.setUsername(username);
	    member.setUserphone(userphone);
	    return (TblMember) sqlSession.selectOne("Member.searchByphone", member);
	}
	 
	// 사용자 ID로 회원 정보 조회
    public TblMember getMemberById(String USER_id) {
        // MyBatis를 사용하여 DB에서 회원 정보 조회
        return sqlSession.selectOne("Member.getMemberById", USER_id);
    }



}


