package com.guest.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.guestDAO;
import com.blah.dto.guestDTO;

public class GJoin implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = null;
		
		guestDTO dto = new guestDTO();
		
		System.out.println(request.getParameter("userid") + " <- 아이디");
		System.out.println(request.getParameter("userpw") + " <- 패스워드");
		System.out.println(request.getParameter("username") + " <- 이름");
		System.out.println(request.getParameter("usercall1") + " <- 전화1");
		System.out.println(request.getParameter("usercall2") + " <- 전화2");
		System.out.println(request.getParameter("usercall3") + " <- 전화3");
		System.out.println(request.getParameter("address") + " <- 주소 ");
		System.out.println(request.getParameter("email") + " <- 이메일 ");
		dto.setId(request.getParameter("userid"));
		dto.setPw(request.getParameter("userpw"));
		dto.setName(request.getParameter("username"));
		String call1 = request.getParameter("usercall1");
		String call2 = request.getParameter("usercall2");
		String call3 = request.getParameter("usercall3");
		String phon = call1 + call2 + call3;
		dto.setPhon(phon);
		dto.setAddress(request.getParameter("address"));
		dto.setEmail(request.getParameter("email"));
//		dto.setWho(Integer.valueOf(request.getParameter("who")));
		
		guestDAO dao = guestDAO.getInstace();
		int check = dao.insertJoin(dto);
		if(check == 0) {
			System.out.println("회원가입 실패");
			url = "./join/join.jsp";
		} else {
			System.out.println("회원가입 성공");
			url = "./login/login.jsp";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
		
	}

}
