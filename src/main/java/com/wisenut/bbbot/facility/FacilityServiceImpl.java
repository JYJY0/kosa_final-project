package com.wisenut.bbbot.facility;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FacilityServiceImpl implements FacilityService {

	@Autowired
	FacilityDAO facilityDAO;

	@Override
	public List<Facility> searchFacility(String district,String type) throws Exception {

		return facilityDAO.searchFacility(district,type);
	}

	@Override
	public List<String> getDistrict() throws Exception {
		
		return facilityDAO.getDistrict();
	}

	@Override
	public List<String> getType() throws Exception {

		return facilityDAO.getType();
	}

}
