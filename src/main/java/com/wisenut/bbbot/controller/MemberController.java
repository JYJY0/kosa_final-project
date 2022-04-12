package com.wisenut.bbbot.controller;

import java.net.http.HttpResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wisenut.bbbot.member.ChildDTO;
import com.wisenut.bbbot.member.MemberDTO;
import com.wisenut.bbbot.member.MemberService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/")
	public String index() {
		log.info("회원가입 페이지");
		return "/member/register";
	}
	
	@GetMapping("/register")
	public String register() {
		//jsp를 보여주는 함수
		log.info("회원가입 페이지 접속");

		return "/member/register";
	}
	
	//jsp를 실행시켜주는 함수
	@RequestMapping(value="/register", method=RequestMethod.POST)
	@ResponseBody
	/* , @RequestParam List<Map<String,String>> childs */
	public void register(@RequestBody Map<String,Object> postdata) throws Exception {
		String id = (String)postdata.get("id");
		
		/* List<Map<String, String>> resultList= postdata.get("childs"); */
		List<Map<String,String>> childMap =(List<Map<String, String>>) postdata.get("childs");
		List<Integer> genderList = new ArrayList<>();
		List<String> birthList = new ArrayList<>();
		
		for(int i = 0; i<childMap.size(); i++) {
			genderList.add(Integer.parseInt(childMap.get(i).get("gender")));
			birthList.add(childMap.get(i).get("birth"));
			/* birthList.add(childMap.get(i).get("birth").replace("-", "")); */
		}
		String password = (String)postdata.get("password");
		String residence = (String)postdata.get("residence");
		
		MemberDTO member = new MemberDTO(id,password,residence);
		memberService.insertMember(member);
		
		int member_code = memberService.selectMember(id);
		log.debug(member_code + "aaa");
		for (int i =0; i<genderList.size(); i++) {
			ChildDTO child = new ChildDTO(member_code,genderList.get(i),birthList.get(i));
			memberService.insertChild(child);
		}
		
		
		
		/*MemberDTO mb=memberService.memberLogin(memberDTO);
		
		if (mb==null) { //일치하지않은 아이디, 비밀번호(로그인실패)
			int result=0;
			rttr.addFlashAttribute("result",result);
			return "/member/login";
		}else {
			session.setAttribute("member", mb); //일치하는 아이디, 비밀번호(로그인성공)
			return "redirect:/list";	
		}*/
		//memberService.memberLogin(memberDTO);
		
	}

	
	
	
	@RequestMapping(value="/login" ,method = RequestMethod.GET)
	public String login() throws SQLException {
		//jsp를 보여주는 함수
		log.info("로그인 페이지 접속");
		return "/member/login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(MemberDTO memberDTO, Model model, HttpSession session,RedirectAttributes ra) throws Exception {
		//jsp를 보여주는 함수
		log.info("로그인 정보 입력");
	
		memberDTO=memberService.memberLogin(memberDTO);
		if(memberDTO != null) {
			session.setAttribute("member", memberDTO);
			
			 ra.addFlashAttribute("msg","로그인 성공"); 
			 return "redirect:/faq/list";
		
		}
		
		 else {  
		session.setAttribute("member",null);
		ra.addFlashAttribute("msg","일치하는 회원정보가 없습니다.");
		return "redirect:/member/login";
		 }
		
		
			
		
		
		
		
		
		
	
	}
		/*List<String> idid=memberService.selectId(); //list id에 대한 변수선언=idid, for문 안에 if문, 입력한 id가 리스트 idid와 비교한 후 없을 경우 반복문 수행
		String msg= "";
		log.info(idid.toString());
		for (String i : idid) {
			if (i.equals(id) || i==id) {
				msg = "로그인 성공";
				log.info(msg);
				model.addAttribute("loginresult",msg);
				model.addAttribute("url","/faq/list");
				return "member/result";
			}else {
				msg = "회원정보가 일치하지 않습니다";
				log.info(msg);
				model.addAttribute("loginresult",msg);
				model.addAttribute("url", "javascript:history.back();");
				return "member/result";
			}
		}
		
		return null;
		}
	
//	@RequestMapping("/login")
//	public String login(MemberDTO memberDTO,Model model) throws SQLException {
//		log.info(memberDTO);
//		
//		model.addAttribute("login_message","로그인이 필요합니다.");
//		return "/member/login";
//	}
	

	}*/
}
