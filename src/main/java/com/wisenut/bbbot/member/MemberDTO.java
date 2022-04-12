package com.wisenut.bbbot.member;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
public class MemberDTO {

	private int member_code; /*회원코드*/
	
	private String id; /*아이디*/
	
	private String password; /*비밀번호*/
	
	private String residence; /*거주지*/
	
	private List<ChildDTO> childs;
	
	private int gender; /*성별*/
	
	private String birth; /*생년월일*/
	
	public MemberDTO(String id, String password) {
		this.id=id;
		this.password = password;
	}
	
	
	
	public MemberDTO() {}

	public MemberDTO(String id, String password, String residence) {
		this.id = id;
		this.password = password;
		this.residence = residence;
	
	}
	

	
}
