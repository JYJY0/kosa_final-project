package com.wisenut.bbbot.wellness;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class WellnessSym {

	private String resource;
	private String symptom_area;
	private int count;
	

}
