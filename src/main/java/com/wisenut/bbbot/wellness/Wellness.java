package com.wisenut.bbbot.wellness;

import lombok.Data;

@Data
public class Wellness {

	private String resource;
	private String label;
	private String descript;
	private String symptom_area;
	
	
	public Wellness(String label) {
		this.label = label;
	}
	public Wellness(String descript, String symptom_area) {
		this.descript = descript;
		this.symptom_area = symptom_area;
	}
}
