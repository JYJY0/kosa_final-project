package com.wisenut.bbbot.facility;

import java.util.List;

public interface FacilityService {
	
	public List<Facility> searchFacility(String district,String type) throws Exception; 
	public List<String> getDistrict() throws Exception;
	public List<String> getType() throws Exception;
	

}
