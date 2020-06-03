package com.manager.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.productDAO;
import com.blah.dto.productDTO;

public class MEnrollList implements MAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String url = "./freshshop-Manager/manager_product_list.jsp";
		
		productDAO pdao = productDAO.getInstace();
		ArrayList<productDTO> list = pdao.selectProduct();
		
		request.setAttribute("productList", list);
		
		String url = "./freshshop-Manager/mProduct_list.jsp";
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
