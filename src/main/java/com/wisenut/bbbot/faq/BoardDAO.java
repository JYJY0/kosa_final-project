package com.wisenut.bbbot.faq;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDAO {
	void insertArticle(BoardDTO boardDTO) throws SQLException;
	
	public List<BoardDTO> getList();

	/* public BoardDTO getDetail(long no) throws SQLException; */
	
	public BoardDTO getPage(int no) throws SQLException;
	
	int updateArticle(BoardDTO boardDTO) throws SQLException;

	int deleteArticle(BoardDTO boardDTO) throws SQLException;

	public void updateReadcount(int no);

	long getTotalArticle() throws SQLException;

}
