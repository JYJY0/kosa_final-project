package com.wisenut.bbbot.facility;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.wisenut.bbbot.member.Member;

@Mapper
public interface FacilityDAO {

	public List<Facility> searchFacility(String district,String type) throws Exception;
	public List<String> getDistrict() throws Exception;
	public List<String> getType() throws Exception;
	
}
