package com.QnA.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blah.dao.QnADAO;
import com.blah.dto.QnADTO;

public class QnAAnswer implements QnAAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String no = request.getParameter("answerNo"); // questionNo에서 answerNO 로 변경.
		
		QnADAO qdao = QnADAO.getInstace();
		QnADTO qdto = qdao.selectQuestionDetail(no);
		
		request.setAttribute("qdto", qdto);
		
		String url = "./freshshop-master/QnAAnswer.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
