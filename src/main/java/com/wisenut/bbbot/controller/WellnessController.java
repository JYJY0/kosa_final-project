package com.wisenut.bbbot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wisenut.bbbot.wellness.WellnessProperty;
import com.wisenut.bbbot.wellness.WellnessService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class WellnessController {

	@Autowired
	private WellnessService wellnessService;
	private static String diseaseName;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	@RequestMapping("/wellness")
	public String wellness() {
		return "wellness/wellness_index";
	}
	@RequestMapping("/wellness/ref")
	public String wellnessRef() {
		return "wellness/wellness_index2";
	}
	@RequestMapping("/wellness/slide")
	public String wellnessSlide() {
		return "wellness/slide";
	}
	@GetMapping("/wellness/info")
	public String wellnessInfo(@RequestParam String name, Model model) throws Exception {
		log.debug(name);
		diseaseName = name;
		List<WellnessProperty> propertyList = wellnessService.searchDisease(name);
		model.addAttribute("propertyList", propertyList);
		log.debug(propertyList.toString());
		
		
		return "wellness/wellness_info";
	}
	
	/*@PostMapping("/wellness/info")
	  @ResponseBody
	  public Map<String,String> wellnessInfo(@RequestParam(value ="property[]") List<String> params, Model model) throws Exception {
	  
		  Map<String,String> result = new HashMap<>();
	  //List<WellnessProperty> paramList = new ArrayList<WellnessProperty>();
	  log.debug(params.get(0));
	  
	  //WellnessProperty property = new WellnessProperty(params.get("property").toString(),diseaseName);
	  //WellnessProperty descript= wellnessService.getDescript(property);
	  
	  //result.put("descript", descript.getDescript());
	  
	  log.debug(result.toString()); 
	  return result; 
	  }*/
	
	
	  @PostMapping("/wellness/info")
	  @ResponseBody
	  public Map<String,String> wellnessInfo(@RequestBody Map<String,String>params, Model model) throws Exception {
	  
	  Map<String,String> result = new HashMap<>();
	  
	  log.debug(params.get("prooerty"));
	  
	  WellnessProperty property = new WellnessProperty(params.get("property"),diseaseName);
	  WellnessProperty descript= wellnessService.getDescript(property);
	  
	  result.put("descript", descript.getDescript());
	  
	  log.debug(result.toString()); 
	  return result; 
	  } 
	 
	
	
}
