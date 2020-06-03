package com.guest.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.guestDAO;

public class GCartDelete implements GAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String delNo = request.getParameter("deleteNo");
		String delId = request.getParameter("deleteId");
		
		guestDAO gdao = guestDAO.getInstace();
		int check = gdao.deleteCart(delId, delNo);
		
		if(check == 0) {
			System.out.println("장바구니 지우기 실패");
		} else {
			System.out.println("장바구니 지우기 성공");
		}
		
		String url = "GuestServlet?command=cart_action";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
