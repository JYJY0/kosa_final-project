package com.wisenut.bbbot.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisenut.bbbot.facility.Facility;
import com.wisenut.bbbot.facility.FacilityService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class FacilityController {

	@Autowired
	FacilityService facilityService;
	
	@RequestMapping("/facility")
	public String viewMap(Model model) throws Exception{
		List<String> districtList = facilityService.getDistrict();
		List<String> typeList = facilityService.getType();
		
		model.addAttribute("districtList",districtList);
		model.addAttribute("typeList",typeList);
		return "facility/facility";
	}
	

	@RequestMapping("/facility/search")
	@ResponseBody
	public HashMap<String, List<Facility>> searchDistrict(@RequestBody Map<String,Object> param,Model model) throws Exception{

		HashMap<String, List<Facility>> result = new HashMap<>();
		String district = (String) param.get("district");
		String type = (String) param.get("type");
		
		List<Facility> facilityList = facilityService.searchFacility(district,type);
		
		
		result.put("facilityList", facilityList);
		
		return result;
		
	}
	
	
}
