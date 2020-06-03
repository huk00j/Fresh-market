package com.guest.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.blah.dao.guestDAO;
import com.blah.dto.guestDTO;

public class GLogin implements GAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
		
		String url = null;
		
		guestDTO dto = new guestDTO();
		
		String id = request.getParameter("loginid");
		String pw = request.getParameter("loginpw");
		System.out.println("아이디 : " + id);
		System.out.println("패스워드는 : " + pw);
		
		dto.setId(id);
		dto.setPw(pw);
		
		guestDAO dao = guestDAO.getInstace();
		String check = dao.selectLogin(dto);
		
		if(check.equals("0")) {
			System.out.println("로그인 실패");
			url = "./login/login.jsp";
//			url = "<%=request.getContextPath()%>"+"/login/login.jsp";
		} else {
			System.out.println("로그인 성공");
			HttpSession sid = request.getSession();
			sid.setAttribute("sid", id);
			
			url = "./freshshop-master/index.jsp";
//			url = "<%=request.getContextPath()%>/freshshop-master/index.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
