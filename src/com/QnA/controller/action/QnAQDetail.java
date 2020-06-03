package com.QnA.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.QnADAO;
import com.blah.dto.QnADTO;

public class QnAQDetail implements QnAAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String no = request.getParameter("selNo");
		
		QnADAO qadao = QnADAO.getInstace();
		
		qadao.updateReadCount(no);	// 조회수 +1.
		QnADTO qnadto = qadao.selectQuestionDetail(no);
		
		request.setAttribute("dto", qnadto);

/*
		//아랫줄은 관리자 답글 가져오기 위한 코드.-------------------------------
		int grp = qnadto.getGrp();
		int lvl = qnadto.getLvl();
		QnADTO Answerdto = qadao.selectOriginDetail(grp, lvl);
		if(Answerdto != null) {
		System.out.println("222 "+Answerdto.getGrp());
		System.out.println("444 "+Answerdto.getLvl());
		} else { 
			System.out.println("널");
		}
		request.setAttribute("Answerdto", Answerdto);
 */		
		//-------------------------------------------------------------
		
		String url = "./freshshop-master/QnAquestionDetail.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
