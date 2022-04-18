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
import com.wisenut.bbbot.wellness.Wellness;
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
	@RequestMapping("/wellness/ref2")
	public String wellnessRef2() {
		return "ref/ref";
	}
	
	@GetMapping("/wellness/info")
	public String wellnessInfo(@RequestParam String name,@RequestParam String page, Model model) throws Exception {
		log.debug(name);
		diseaseName = name;
		List<WellnessProperty> dbProperty = wellnessService.searchDisease(name);
		List<String> propertyList = new ArrayList<>();
		
		int pg = Integer.parseInt(page);
		if(pg == 1) {
			for (WellnessProperty w : dbProperty) {
				if (w.getProperty().equals("정의")||w.getProperty().equals("원인")||w.getProperty().equals("증상")||w.getProperty().equals("증상부위")) {
					propertyList.add(w.getProperty());
				}
			}
		}else if(pg == 2) {
			for (WellnessProperty w : dbProperty) {
				if (w.getProperty().equals("완화방법")||w.getProperty().equals("좋은음식")||w.getProperty().equals("치료약")||w.getProperty().equals("치료방법")) {
					propertyList.add(w.getProperty());
				}
			}
		}else if(pg == 3) {
			for (WellnessProperty w : dbProperty) {
				if (w.getProperty().equals("해로운음식")||w.getProperty().equals("원인")||w.getProperty().equals("증상")||w.getProperty().equals("증상부위")) {
					propertyList.add(w.getProperty());
				}
			}
		}
		
		
		
		model.addAttribute("propertyList", propertyList);
		model.addAttribute("page", page);
		model.addAttribute("name", diseaseName);
		log.debug(propertyList.toString());
		
		
		return "wellness/wellness_info";
	}
	
	
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

	  @PostMapping("/wellness/symptom")
	  @ResponseBody
	  public Map<String,Object> wellnesssymptom(@RequestBody Map<String,String>params, Model model) throws Exception {
	  
	  Map<String,Object> result = new HashMap<>();
	  List<Wellness> labelList = new ArrayList<>();
	  
	  List<WellnessProperty> symptomList = new ArrayList<>();
	  if (params.get("descript") != null) {
		  Wellness ws = new Wellness(params.get("descript"),params.get("area"));
		  labelList = wellnessService.getLabel(ws);
		  log.debug(labelList.toString());
	  }else {
		  symptomList = wellnessService.getSymptom(params.get("area"));  
	  }
	  
	  result.put("symptomList", symptomList);
	  result.put("labelList", labelList);
	  
	  log.debug(result.toString()); 
	  return result; 
	  } 
	  
	  
	  
	  
	  
}
