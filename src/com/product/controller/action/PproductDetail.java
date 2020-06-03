package com.product.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.productDAO;
import com.blah.dto.productDTO;

public class PproductDetail implements PAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pNum = request.getParameter("pNum");
		
		productDAO pdao = productDAO.getInstace();
		productDTO dto = pdao.selectDetailProduct(pNum);
		request.setAttribute("pdto", dto);
		
		String url = "./freshshop-master/shop-detail.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
