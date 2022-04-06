package com.wisenut.bbbot.wellness;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WellnessDAO {
	 
	List<WellnessProperty> getWellnessInfo(String name) throws SQLException;
	WellnessProperty getDescript(WellnessProperty property) throws SQLException;
}
