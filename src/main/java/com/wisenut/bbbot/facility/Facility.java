package com.wisenut.bbbot.facility;

import lombok.Data;

@Data
public class Facility {

	private String type;
	private String address;
	private String district;
	private String place_name;
	private Double lon;
	private Double lat;
	
	
	public Facility() {}
	
	public Facility(Double lon, Double lat, String place_name){
		this.lon = lon;
		this.lat = lat;
		this.place_name = place_name;
	}
	
}
