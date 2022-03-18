package com.wisenut.bbbot.member;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO memberDAO;
	@Override
	public List<Member> getAdminInfo() throws Exception {
		
		
		
		return null;
	}
	
	@Override
	public void insertAdmin() throws Exception {
		Member member = new Member("adimin1@bbbot.com","1234","서울시 종로구");
		
		memberDAO.insertAdmin(member);
		
	}
	
}
