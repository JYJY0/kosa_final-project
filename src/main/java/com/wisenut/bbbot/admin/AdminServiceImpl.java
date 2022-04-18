package com.wisenut.bbbot.admin;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDAO adminDAO;
	
	@Override
	public List<AdminEDA> getBarChart() throws SQLException {
		// TODO Auto-generated method stub
		return adminDAO.getBarChart();
	}

	@Override
	public List<AdminEDA> getPieChart() throws SQLException {
		
		// TODO Auto-generated method stub
		return adminDAO.getPieChart();
	}

	@Override
	public List<AdminEDA> getTreemap() throws SQLException {
		return adminDAO.getTreemap();
	}

	@Override
	public List<AdminEDA> getLineChart() throws SQLException {
		// TODO Auto-generated method stub
		return adminDAO.getLineChart();
	}

	
	
}
