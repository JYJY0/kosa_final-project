package com.wisenut.bbbot.wellness;

import lombok.Data;

@Data
public class WellnessProperty {
	private String property;
	private String descript;
	private String name;
	
	public WellnessProperty(String property,String name) {
		this.property = property;
		this.name = name;
	}
	public WellnessProperty(String property) {
		this.property = property;
	}
}
