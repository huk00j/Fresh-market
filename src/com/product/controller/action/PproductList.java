package com.product.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.productDAO;
import com.blah.dto.productDTO;

public class PproductList implements PAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		productDAO pdao = productDAO.getInstace();
		ArrayList<productDTO> list = pdao.selectProduct();
		
		request.setAttribute("pList", list);
		
		String url = "./freshshop-master/shop.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
