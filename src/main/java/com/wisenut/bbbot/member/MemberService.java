package com.wisenut.bbbot.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> getAdminInfo() throws Exception;
	public void insertAdmin() throws Exception;
	
}
