package com.wisenut.bbbot.member;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.message.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wisenut.bbbot.member.MemberServiceImpl;

import lombok.extern.log4j.Log4j2;


@Log4j2
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberDTO memberDTO) throws SQLException {
		log.info("회원가입 페이지 진입");
		try {
			memberDAO.insertMember(memberDTO);
			log.info("부모정보 입력 성공");
		} catch (SQLException e) {
			log.info(e.getMessage());
			throw e;
		} 
	}
	
	@Override
	public int selectMember(String id) throws SQLException{
		log.info("member_code 진입");
		try {
			memberDAO.selectMember(id);
			log.info("member_code 검색 성공");
		}catch (SQLException e) {
			log.info(e.getMessage());
			throw e;
		}
		return memberDAO.selectMember(id);
		
	}
	
	@Override
	public void insertChild(ChildDTO childDTO) throws SQLException{
		log.info("자녀정보 진입");
		log.info(childDTO.toString());
		try {
			memberDAO.insertChild(childDTO);
			log.info("회원가입 입력 성공");
		}catch (SQLException e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		log.info("로그인 입력 성공");
		
		return memberDAO.memberLogin(memberDTO);
	}
	/*아이디 조회*/
	@Override
	public List<String> selectId(){
		log.info(memberDAO.selectId());
		
		return memberDAO.selectId();
	}

	@Override
	public String memberLogin(String id, MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<MemberDTO> childList(MemberDTO child){
		return memberDAO.childList();
	}

	@Override
	public void insertChild(MemberDTO memberDTO) throws SQLException {
		// TODO Auto-generated method stub
		
	}
	

}
