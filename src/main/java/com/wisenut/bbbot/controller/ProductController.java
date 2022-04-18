package com.wisenut.bbbot.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ProductController {
	
	
	@RequestMapping(value = "/product")
	public String main() {
		return "product/product";
	}
	
	
	
	@RequestMapping(value = "/product/search")
	@ResponseBody
	public Map<String, Object> craw_select(@RequestBody Map<String,Object> params, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		List<String> product_name = (List<String>) params.get("product_name");

		List<String> nameResult = new ArrayList<>();
		List<String> priceResult = new ArrayList<>();
		List<String> imageResult = new ArrayList<>();
		//List<String> PlayedResult = new ArrayList<>();
		
		log.debug(product_name.toString());
		
		
		for(int i =0; i< product_name.size(); i++) {
			String url = "https://www.coupang.com/np/search?component=&q="+product_name.get(i);
			
			Document doc = Jsoup.connect(url).timeout(0).get();
			Elements ele = doc.select(".search-product .search-product-wrap");
			//Get images from document object.
			Elements images = doc.select(".search-product-wrap-img");  
			
			int productSize = ele.size();
			System.out.println("div개수" + productSize);

			for(int j = 0; j< ele.size(); j++) {
				nameResult.add(ele.get(j).select(".name").text()); //제품이름 
				priceResult.add(ele.get(j).select(".price-value").text()); //가격
				imageResult.add(images.get(j).attr("src")); //이미지
			}
			
		}
		
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("nameResult", nameResult);
		resultMap.put("priceResult", priceResult);
		resultMap.put("imageResult", imageResult);
		log.debug(imageResult.toString());
		return resultMap;
	}
}
