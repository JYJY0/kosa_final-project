package com.wisenut.bbbot.faq;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDTO {
	private int no; /*게시글 번호*/
	
	private String title; /*게시글 제목*/
	
	private String content; /*게시글 내용*/
	
	private String answer; /*게시글 답변*/
	
	private int count; /*게시글 조회수*/
	
	private String password;

	
	

}
