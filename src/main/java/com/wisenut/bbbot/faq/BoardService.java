package com.wisenut.bbbot.faq;

import java.sql.SQLException;
import java.util.List;

public interface BoardService {

	void insertArticle(BoardDTO boardDTO) throws SQLException;
	
	public List<BoardDTO> getList();

	public BoardDTO getPage(int no) throws SQLException;

	int updateArticle(BoardDTO boardDTO) throws SQLException;

	int deleteArticle(BoardDTO boardDTO) throws SQLException;

	long getTotalArticle() throws SQLException;
	
}
