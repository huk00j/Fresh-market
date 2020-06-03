package com.guest.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.guestDAO;

public class GCartUpdate implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String[] no = request.getParameterValues("cartNo");
		String[] amount = request.getParameterValues("selAmount");
		
		for (int i = 0; i < no.length; i++) {
			System.out.println(no[i]);
			System.out.println(amount[i]);
			System.out.println("-----------");
		}
	
		
//		String no = request.getParameter("cartNo");
//		String amount = request.getParameter("updateAmount");
		
/*		System.out.println("넘버 몇? " + no);
		System.out.println("변경 수량 몇? " + amount);
		
		guestDAO gdao = guestDAO.getInstace();
		int check = gdao.updateCart(no, amount);
		if(check == 0) {
			System.out.println("수량 변경 실패");
		} else {
			System.out.println("수량 변경 성공");
		}
 */
		
		String url = "GuestServlet?command=cart_action";

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
