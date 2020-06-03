package com.QnA.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.QnADAO;
import com.blah.dto.QnADTO;

public class QnAAnswerReply implements QnAAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("sid");
		String id = request.getParameter("questionId");
		String no = request.getParameter("questionNo");
		String title = request.getParameter("questionTitle");
		String Acontent = request.getParameter("AnswerContent");
		
		System.out.println("아이디 ? " + id );
		System.out.println("넘버 몇 ? " + no);
		
		
		QnADTO qdto = new QnADTO();
		qdto.setId(id);
		qdto.setNo(Integer.valueOf(no));
		qdto.setTitle(title);
		qdto.setContent(Acontent);

		
		QnADAO qdao = QnADAO.getInstace();
		int count = qdao.selectSeq(no);
		count++;
		
		int check = qdao.insertAnswer(qdto, count);
		
		if(check == 0) {
			System.out.println("답변 실패");
		} else {
			System.out.println("답변 성공");
		}
		
		
		
		String url = "./freshshop-master/QnAAnswer.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
