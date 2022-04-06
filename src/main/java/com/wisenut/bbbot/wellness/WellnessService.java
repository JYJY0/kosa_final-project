package com.wisenut.bbbot.wellness;

import java.sql.SQLException;
import java.util.List;

public interface WellnessService {
	
	List<WellnessProperty> searchDisease(String name) throws Exception;
	
	WellnessProperty getDescript(WellnessProperty property) throws SQLException;
	
	
}
