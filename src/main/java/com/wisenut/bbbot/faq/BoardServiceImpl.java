package com.wisenut.bbbot.faq;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public void insertArticle(BoardDTO boardDTO) throws SQLException {
		try {
			boardDAO.insertArticle(boardDTO);
			log.info("게시물 입력 성공");
		} catch (SQLException e) {
			log.info(e.getMessage());
			throw e;
		} 
	}
	
	@Override
	public List<BoardDTO> getList(){
		return boardDAO.getList();
	}
	/*게시판 상세조회*/
	@Override
	public BoardDTO getPage(int no) throws SQLException {
		try {
			boardDAO.updateReadcount(no);
			BoardDTO boardDTO = boardDAO.getPage(no);
			if (boardDTO == null) {
				throw new RuntimeException("없는 게시물이거나 접근 권한이 없습니다.");
			}
			return boardDTO;
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}
	/*게시물 수정*/
	@Override
	public int updateArticle(BoardDTO boardDTO) throws SQLException {
		try {
			if (boardDAO.updateArticle(boardDTO) == 0) {
				throw new RuntimeException("게시물이 존재하지 않습니다.");
			}
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		return boardDAO.updateArticle(boardDTO);
	}
	/*게시글 삭제*/
	@Override
	public int deleteArticle(BoardDTO boardDTO) throws SQLException {
		try {
			if (boardDAO.deleteArticle(boardDTO) == 0) {
				throw new RuntimeException("게시물이 존재하지 않습니다.");
			}
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		return boardDAO.deleteArticle(boardDTO);
	}
	
	@Override
	public long getTotalArticle() throws SQLException {
		return boardDAO.getTotalArticle();
	}
	

}
