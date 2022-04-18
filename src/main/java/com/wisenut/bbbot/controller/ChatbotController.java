package com.wisenut.bbbot.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisenut.bbbot.facility.Facility;

@CrossOrigin(origins = "http://localhost:5000") // 추가
@Controller
public class ChatbotController {
	
	@RequestMapping("/chatbot/main")
	public String chatbotMain(HttpSession session, Model model,HttpServletRequest request) throws Exception{
		
		session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		model.addAttribute(id);
		return "chatbot/index";
	}
	
	@RequestMapping("/chatbot/ref")
	public String chatbotMain2() throws Exception{
		
		return "chatbot/index2";
	}
	
	@RequestMapping("/chatbot/chat")
	@ResponseBody
	public HashMap<String, Object> chatting(@RequestBody Map<String,Object> param) throws Exception{
		
		HashMap<String, Object> result = new HashMap<>();
		String user = (String) param.get("user");
		
		result.put("user", user);
		result.put("bbbot","답변");
		return result;
	}

}
