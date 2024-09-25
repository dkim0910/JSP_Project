package com.kh.web.dao;

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
	 public boolean checkId(String userid) {
		 boolean result = false;
		 int cnt = 0;
		 cnt = sqlSession.selectOne("Member.checkId", userid);
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
	
	 public TblMember login(String userid, String userpw) {
		 TblMember member = null;
		 HashMap<String, String> datas = new HashMap<>();
		 datas.put("userid", userid);
		 datas.put("userpw", userpw);
		 
		 member = sqlSession.selectOne("Member.login",datas);
		 
		 
		 return member;
		 
		 
	 }
	 
	//회원 1명 검색
	public TblMember searchByname(String username, String userphone) {
		 Map<String, String> params = new HashMap<>();
		 params.put("username", username);
		 params.put("userphone", userphone);
	
		return (TblMember) sqlSession.selectOne("Member.searchByname", params);		 
 
	}
	 
	public TblMember searchByphone(String username, String userphone) {
	    TblMember member = new TblMember();
	    member.setUsername(username);
	    member.setUserphone(userphone);
	    return (TblMember) sqlSession.selectOne("Member.searchByphone", member);
	}
	 
}
