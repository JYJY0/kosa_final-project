package com.wisenut.bbbot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wisenut.bbbot.member.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/insert")
	public String insert() throws Exception{
		memberService.insertAdmin();
		return "member/login";
	}
	
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	
}
