package com.wisenut.bbbot.member;

import lombok.Data;

@Data
public class ChildDTO {
	
	private int member_code; /*회원코드*/
	
	private int gender; /*성별*/
	
	private String birth; /*생년월일*/

	public ChildDTO(int member_code, int gender, String birth) {
		super();
		this.member_code = member_code;
		this.gender = gender;
		this.birth = birth;
	}

}
