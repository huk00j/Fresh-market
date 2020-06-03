package com.QnA.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.QnADAO;
import com.blah.dto.QnADTO;

public class QnAList implements QnAAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		QnADAO qadao = QnADAO.getInstace();
		ArrayList<QnADTO> list = qadao.selectList();
		
		String url = null;
		
		if(list == null) {
			System.out.println("QnA 게시글 불러오기 실패");
			url = "./freshshop-master/QnA.jsp";
		} else {
			System.out.println("QnA 게시글 불러오기 성공");
			
			//---------------------------------------------
			
			
			//---------------------------------------------
			
			request.setAttribute("QnAlist", list);
			url = "./freshshop-master/QnA.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
