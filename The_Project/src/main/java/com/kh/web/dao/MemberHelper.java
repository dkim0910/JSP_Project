package com.kh.web.dao;

import com.kh.web.beans.TblMember;

public class MemberHelper {
	 public static String getMemberInfo(TblMember member) {
	        if (member != null) {
	            return member.getUSER_id() + "님 (" + member.getUsername() + ")";
	        }
	        return "";
	    }
}
