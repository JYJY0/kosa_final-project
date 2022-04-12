package com.wisenut.bbbot.member;

import java.sql.SQLException;
import java.util.List;

import com.wisenut.bbbot.faq.BoardDTO;

public interface MemberService {
	/*회원가입*/
	public void insertMember(MemberDTO memberDTO) throws SQLException;
	/*로그인*/
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception;
	/*member_code 검색*/
	public int selectMember(String id) throws SQLException;
	/*자녀정보 입력*/
	public void insertChild(MemberDTO memberDTO) throws SQLException;
	/*아이디 list 출력*/
	public List<String> selectId();
	String memberLogin(String id, MemberDTO memberDTO) throws Exception;
	
	public List<MemberDTO> childList(MemberDTO child);
	
	void insertChild(ChildDTO childDTO) throws SQLException;

}
