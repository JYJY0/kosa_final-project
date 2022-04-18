package com.wisenut.bbbot.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wisenut.bbbot.faq.BoardDAO;
import com.wisenut.bbbot.faq.BoardDTO;
import com.wisenut.bbbot.faq.BoardService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/faq/*")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	
	@RequestMapping("/")
	public String index() {
		log.info("게시판 목록 리스트페이지");
		return "faq/index";
	}
	

	/*게시판 목록 페이지 접속*/
	@RequestMapping("/list")
	public String list(Model model) {
		log.info("게시판 목록 리스트페이지");
		model.addAttribute("list",boardService.getList());
		return "faq/list";
	}
	/*게시글 등록 페이지 접속*/
	@RequestMapping("/enroll")
	public String enroll() {
		log.info("게시판 등록 페이지");
		return "faq/enroll";
		
	}
	/*게시판 등록*/
	@PostMapping("/result")
	public String result(@ModelAttribute BoardDTO boardDTO, Model model){
		log.info(boardDTO.toString());
		
		try {
			boardService.insertArticle(boardDTO);
			return "redirect:/faq/list";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			model.addAttribute("msg","게시글 오류입니다.");
			model.addAttribute("url","javascript:history.back();");
			return "redirect:/faq/result";
			
		}
	}
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam long no, Model model) {
		try {
			model.addAttribute("no",no);
			return "faq/delete";
		}catch(Exception e){
			throw e;	
		}
	}
	
	@PostMapping("/delete")
	public String delete(@ModelAttribute BoardDTO boardDTO, Model model) {
		log.info("삭제페이지 진입");
		try {
			boardService.deleteArticle(boardDTO);
			model.addAttribute("msg", boardDTO.getNo()+"번 글이 삭제 되었습니다.");
			model.addAttribute("url","list");
			return "redirect:/faq/list";
		}catch(Exception e) {
			model.addAttribute("msg", e.getMessage());
			model.addAttribute("url", "javascript:history.back();");
			return "faq/result";
			
		}
	}
	/*수정페이지로 이동*/
	@GetMapping("/update")
	public String update(@RequestParam int no, Model model) {
		log.info("수정페이지 진입");
			try {
				model.addAttribute("pageInfo",boardService.getPage(no));
				return "/faq/update";
			}catch(SQLException e) {
				model.addAttribute("msg","접근할 수 없는 게시물이거나 시스템 오류입니다.");
				model.addAttribute("url","list");
				return "/faq/result";
			}
	}
		
	@PostMapping("/update")
	public String update(@ModelAttribute BoardDTO boardDTO, Model model) {
		try {
			boardService.updateArticle(boardDTO);
			return "redirect:/faq/detail?no=" + boardDTO.getNo();
		} catch (SQLException e) {
			model.addAttribute("msg", e.getMessage());
			model.addAttribute("url", "javascript:history.back();");
			return "/faq/result";
		}
		
		
		
	}
	/*게시판 상세페이지*/
	@GetMapping("/detail")
	public String detail(@RequestParam int no,Model model){
		log.info("게시판 상세페이지 진입");
		try {
			model.addAttribute("pageInfo", boardService.getPage(no));
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/faq/detail";
	}
}
