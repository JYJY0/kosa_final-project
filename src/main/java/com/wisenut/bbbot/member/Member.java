package com.wisenut.bbbot.member;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class Member {

	private String id;
	private String password;
	private String residence;

	public Member(String id, String password, String residence) {
		this.id = id;
		this.password = password;
		this.residence = residence;
	}

}
