package com.wisenut.bbbot.wellness;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class WellnessServiceImpl implements WellnessService{
	
	@Autowired
	private WellnessDAO wellnessDAO;
	
	@Override
	public List<WellnessProperty> searchDisease(String name) throws Exception {

		List<WellnessProperty> propertyList = new ArrayList<WellnessProperty>();
		
		propertyList = wellnessDAO.getWellnessInfo(name);
		log.debug(propertyList.get(0).getProperty());
		return propertyList;
		
	}

	@Override
	public WellnessProperty getDescript(WellnessProperty property) throws SQLException {
		
		WellnessProperty descript = wellnessDAO.getDescript(property);
		return descript;
	}
	
	@Override
	public List<WellnessProperty> getSymptom(String symptom_area) throws SQLException {
		
		return wellnessDAO.getSymptom(symptom_area);
	}
	@Override
	public List<Wellness> getLabel(Wellness wellness) throws SQLException {
		log.debug(wellness.toString());
		return wellnessDAO.getLabel(wellness);
	}
}
