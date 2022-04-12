package com.wisenut.bbbot.member;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.wisenut.bbbot.faq.BoardDTO;

@Mapper
public interface MemberDAO {
	
	void insertMember(MemberDTO memberDTO) throws SQLException;
	
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception;
	
	int selectMember(String id) throws SQLException;
	
	void insertChild(ChildDTO childDTO) throws SQLException;
	
	public List<String> selectId();
	
	public List<MemberDTO> childList();
	

}
