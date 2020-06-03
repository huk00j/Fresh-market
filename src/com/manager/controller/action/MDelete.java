package com.manager.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.productDAO;

public class MDelete implements MAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String productNum = request.getParameter("productNum");
		System.out.println(productNum + " -----------------------");
		
		productDAO pdao = productDAO.getInstace();
		int check = pdao.deleteProduct(productNum);
		
		String url = null;
		
		
		if(check == 0) {
			System.out.println("상품 삭제 실패");
			url = "ManageEnrollListAction.java";
		} else {
			System.out.println("상품 삭제 성공");
//			url = "./ManageEnrollListAction.java";
			url = "./ManagerServlet?command=enroll_list_action";
//			String abc = "enroll_list_action";
//			request.setAttribute("command", abc);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
