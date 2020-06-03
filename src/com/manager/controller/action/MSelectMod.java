package com.manager.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.productDAO;
import com.blah.dto.productDTO;

public class MSelectMod implements MAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String modNum = request.getParameter("selModNum");
			
			productDAO pdao = productDAO.getInstace();
			ArrayList<productDTO> list = pdao.selectModProduct(modNum);
			
//			request.setAttribute("mlist", list);
			
			request.setAttribute("num", modNum);
			request.setAttribute("type", list.get(0).getType());
			request.setAttribute("name", list.get(0).getName());
			request.setAttribute("amount", list.get(0).getAmount());
			request.setAttribute("price", list.get(0).getPrice());
			request.setAttribute("origin", list.get(0).getOrigin());
			request.setAttribute("introduce", list.get(0).getIntroduce());
			request.setAttribute("image", list.get(0).getImage());
			
			String url = "./freshshop-Manager/mProduct_modify.jsp";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
	}

}
