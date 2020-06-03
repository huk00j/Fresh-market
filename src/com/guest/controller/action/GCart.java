package com.guest.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blah.dao.guestDAO;
import com.blah.dto.cartViewDTO;

public class GCart implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("sid");
		
		guestDAO gdao = guestDAO.getInstace();

	
		ArrayList<cartViewDTO> list = gdao.selectCartView(id);
		
		if(list == null) {
			System.out.println("장바구니 불러오기 실패");
		} else {
			System.out.println("장바구니 불러오기 성공");
		}
		
		request.setAttribute("vlist", list);
		
		String url = "./freshshop-master/cart.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
