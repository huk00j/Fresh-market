package com.QnA.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blah.dao.QnADAO;

public class QnAquestion implements QnAAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("sid");
		String title = request.getParameter("questionTitle");
		String content = request.getParameter("questionContent");
		
		
		QnADAO qdao = QnADAO.getInstace();
		int check = qdao.insertQuestion(id, title, content);
		
		String url = null;
		if(check == 0) {
			System.out.println("QnA 등록 실패");
			url = "./QnAServlet?command=enroll_Question";
		} else {
			System.out.println("QnA 등록 성공");
			url = "./freshshop-master/QnA.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
