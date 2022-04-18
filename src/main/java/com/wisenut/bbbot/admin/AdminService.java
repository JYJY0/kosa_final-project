package com.wisenut.bbbot.admin;

import java.sql.SQLException;
import java.util.List;

public interface AdminService {
	
	List<AdminEDA> getBarChart() throws SQLException;
	List<AdminEDA> getPieChart() throws SQLException;
	List<AdminEDA> getTreemap() throws SQLException;
	List<AdminEDA> getLineChart() throws SQLException;

}
