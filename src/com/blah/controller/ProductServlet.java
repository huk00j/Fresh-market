package com.blah.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.controller.action.PAction;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String command = request.getParameter("command");
		System.out.println("실험 : " + command);
		
		
		String savePath = "upload";	// 파일 저장하는 곳.
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		request.setAttribute("uploadFilePath", uploadFilePath);
		System.out.println("프로덕트 업로드 경로 : " + uploadFilePath);
		
	
		//-------------------------------------------------------
		System.out.println("프로덕트 커맨드 " + command);
		
		ActionFactoryProduct af = ActionFactoryProduct.getInstance();
		PAction action = af.getAction(command);

		if (action != null) {
			action.execute(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	
	}

}
