package com.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		
		// URL에서 프로젝트 이름 뒷 부분의 문자열 얻어내기
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.subString(conPath.length());
		
		//주어진 URL에 따라 지정된 동작 수행
		if (com.equals("/list")) || com.equals("/")) {
			request.setAttribute("msgList", new BoardDao().selectList());
			view = "list.jsp";
		} else if (com.equals("/view")) {
			
				// 지정된 글 번호의 글을 DB에서 읽음
				int num = Integer.parseInt(request.getParameter("num"));
				BoardDto dto = new BoardDao().selectOne(num, true);
				
				// 글 제목과 내용이 웹 페이지에 올바르게 출력
				// 공백과 줄넘김 처리
				dto.setTitle(dto.getTitle().replace(" ", "&nbsp;"));
				dto.setContent(dto.getContent().replace(" ", "&nbsp;").replace("\n", "<br>"));
				
				// DTO 객체를 request의 속성 "msg"로 등록
				request.setAttribute("msg", dto);
			%>
		} else if (com.equals("\write")) {
			//글 번호 값 얻기, 주어지지 않았으면 0으로 설정
			String tmp = request.getParameter("num");
			int num = (tmp != null && tmp.length() > 0 ) ? Integer.parseInt(tmp)
														: 0;
			//새 글쓰기 모드를 가정하고 변수 초기값 설정
			BoardDto dto = new BoardDto();
			String action = "insert.jsp";
			
			//글 번호가 주어졌으면, 글 수정 모드
			if (num > 0 ) {
				dto = new BoardDao().selectOne(num, false);
				action = "update.jsp?num=" + num;
				
		}
		
			request.setAttribute("msg", dto);
			request.setAttribute("action", action);
			view = "write.jsp";
		//view에 담긴 문자열에 따라 포워딩 또는 리다이렉팅
		
	if (view.startsWith("redirect:")) {
		respoense.sendRedirect(view.substring(9));
	}
	else {
		request.getRequestDispatcher(view).forward(request, response);
		}
	}
		


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
