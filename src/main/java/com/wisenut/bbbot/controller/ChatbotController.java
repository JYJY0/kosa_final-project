package com.wisenut.bbbot.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisenut.bbbot.facility.Facility;

@Controller
public class ChatbotController {
	
	@RequestMapping("/chatbot/main")
	public String chatbotMain() throws Exception{
		
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
