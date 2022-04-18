package com.wisenut.bbbot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wisenut.bbbot.admin.AdminEDA;
import com.wisenut.bbbot.admin.AdminService;
import com.wisenut.bbbot.wellness.WellnessService;
import com.wisenut.bbbot.wellness.WellnessSym;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class AdminCotroller {

	@Autowired
	AdminService adminService;
	
	  @RequestMapping("/admin/eda")
	  public String eda(Model model) throws Exception{
		  
		  	
		  List<AdminEDA> bar = adminService.getBarChart();
		  List<AdminEDA> pie = adminService.getPieChart();
		  List<AdminEDA> tree = adminService.getTreemap();
		  List<AdminEDA> line = adminService.getLineChart();
		  System.out.println(pie);
		  System.out.println(tree);
		  
		  List<String> color = new ArrayList<String>();
		  color.add("#EFB4C1");
		  color.add("#A8C879");
		  color.add("#E28FAD");
		  color.add("#F0C7AB");
		  color.add("#E48E58");
		  color.add("#EDAA7D");
		  color.add("#5AA08D");
		  color.add("#4C92B1");
		  color.add("#678FAE");
		  color.add("#AC99C1");
		  color.add("#96B1D0");
		  color.add("#C08863");
		  color.add("#C08863");
		  color.add("#C8C2BD");
		  
		int color_i = 0;
		String pre_age = pie.get(0).getAge();
		System.out.println(pre_age);
		List<Integer> sum_cnt = new ArrayList<>();
		List<String> sum_gen = new ArrayList<>();
		String pieData = "";
	
		
		
		
		pieData += "\"category\": [{\"label\": \"\", \"color\": \"#ffffff\", \"value\": \"150\", \"category\": [{";
		for(AdminEDA i : pie) {
			System.out.println(i.getAge());
		    if (!pre_age.equals(i.getAge())) {
		        String a = "";
		        if (sum_cnt.size() == 1){
		            a = "\"label\": \"" + pre_age +
		            "\", \"color\": \"" + color.get(color_i) +
		            "\", \"value\": \"" + sum_cnt.get(0).toString() + 
		            "\", \"tooltext\": \"$label, $value, $percentValue\", \"category\": [{\"label\": \"" + sum_gen.get(0) + 
		            "\", \"color\": \"" + color.get(color_i)+ 
		            "\", \"value\": \"" + sum_cnt.get(0).toString() + 
		            "\", \"tooltext\": \"$label, $value, $percentValue\"}]}, {";
		        }else if (sum_cnt.size() == 2){
		            a = "\"label\": \"" + pre_age + 
		            "\", \"color\": \"" + color.get(color_i) +
		            "\", \"value\": \"" + Integer.toString(sum_cnt.stream().mapToInt(Integer::intValue).sum())+
		            "\", \"tooltext\": \"$label, $value, $percentValue\", \"category\": [{\"label\": \"" + sum_gen.get(0) +
		            "\", \"color\": \"" + color.get(color_i)+
		            "\", \"value\": \"" + sum_cnt.get(0).toString() +
		            "\", \"tooltext\": \"$label, $value, $percentValue\"}, {\"label\": \"" + sum_gen.get(1)+
		            "\", \"color\": \"" + color.get(color_i)+
		            "\", \"value\": \"" + sum_cnt.get(1).toString() +
		            "\", \"tooltext\": \"$label, $value, $percentValue\"}]}, {";
		        pieData += a;
		
		        pre_age = i.getAge();
		        sum_cnt = new ArrayList<>();
				sum_gen = new ArrayList<>();
		        color_i += 1;
		        sum_cnt.add(i.getCnt());
		        sum_gen.add(i.getGender());
		        }
		    }else {
		        sum_cnt.add(i.getCnt());
		        sum_gen.add(i.getGender());
		    }
		}
		String a = "";
		
		  if (sum_cnt.size() == 1){
	            a = "\"label\": \"" + pre_age +
	            "\", \"color\": \"" + color.get(color_i) +
	            "\", \"value\": \"" + sum_cnt.get(0).toString() + 
	            "\", \"tooltext\": \"$label, $value, $percentValue\", \"category\": [{\"label\": \"" + sum_gen.get(0) + 
	            "\", \"color\": \"" + color.get(color_i)+ 
	            "\", \"value\": \"" + sum_cnt.get(0).toString() + 
	            "\", \"tooltext\": \"$label, $value, $percentValue\"}]}]}]";
	        }else if (sum_cnt.size() == 2){
	            a = "\"label\": \"" + pre_age + 
	            "\", \"color\": \"" + color.get(color_i) +
	            "\", \"value\": \"" + Integer.toString(sum_cnt.stream().mapToInt(Integer::intValue).sum())+
	            "\", \"tooltext\": \"$label, $value, $percentValue\", \"category\": [{\"label\": \"" + sum_gen.get(0) +
	            "\", \"color\": \"" + color.get(color_i)+
	            "\", \"value\": \"" + sum_cnt.get(0).toString() +
	            "\", \"tooltext\": \"$label, $value, $percentValue\"}, {\"label\": \"" + sum_gen.get(1)+
	            "\", \"color\": \"" + color.get(color_i)+
	            "\", \"value\": \"" + sum_cnt.get(1).toString() +
	            "\", \"tooltext\": \"$label, $value, $percentValue\"}]}]}]";
	        }
		
	     pieData += a;
		
		
		
		
		  
		  
		  
		  /*
		  pieData += "[{\"label\":\"\",\"value\":\"150\",\"category\":[";
		  for(AdminEDA a : pie) {
			  pieData += "{\"label\":\""+a.getAge()+"\",\"color\":\""+color.get(rand1)+"\",\"value\":\""+a.getCnt()
			  		+ "\",\"category\": [{ \"label\":\"" + a.getGender() +"\",\"color\": \""+color.get(rand2)+"\",\"value\":"
			  				+ "\""+a.getCnt()+"\"},";
					  
		  }
		  pieData = pieData.substring(0, pieData.length()-1);
		  pieData+="]}]}]";
		  */
		  System.out.println(pieData);
		  
		  
		  model.addAttribute("bar",bar);
		  model.addAttribute("pie",pie);
		  model.addAttribute("tree",tree);
		  model.addAttribute("line",line);
		  model.addAttribute("pieData",pieData);
		  
	  return "admin/eda/admin_eda";
	  }
	 
/*	@RequestMapping("/admin/eda")
	public HashMap<String, Object> eda() throws Exception{
		HashMap<String, Object> result = new HashMap<>();
		List<WellnessSym> testList = wellnessService.test();
		result.put("testList", testList);
		return result;
	}*/
	

	  
}
