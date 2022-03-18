package com.wisenut.bbbot.member;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface MemberDAO {

	public void insertAdmin(Member member) throws Exception;
}
