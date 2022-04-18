package com.wisenut.bbbot.admin;

import lombok.Data;

@Data
public class AdminEDA {

	//bar chart
	private String word_token;
	private int cnt;
	
	//treemap
	private String residence;
	//private String word_token;
	//private int cnt;
	
	//line chart
	private int hour;
	private int weekday;
	private int weekend;
	
	//pie chart
	private String age;
	private String gender;
	//private int cnt;
	
	
	public void setBarChart(String word_token, int cnt) {
		this.word_token = word_token;
		this.cnt = cnt;
	}
	public void setTreeMap(String residence, String word_token, int cnt) {
		this.residence  = residence;
		this.word_token = word_token;
		this.cnt = cnt;
	}
	public void setLineChart(int hour, int weekday, int weekend) {
		this.hour = hour;
		this.weekday = weekday;
		this.weekend = weekend;
	}
	public void setPieChart(String age, String gender, int cnt) {
		this.age = age;
		this.gender = gender;
		this.cnt = cnt;
	}
}
