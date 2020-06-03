package com.blah.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manager.controller.action.MAction;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/ManagerServlet")
public class ManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerServlet() {
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
		PrintWriter out = response.getWriter();
		
		String command = request.getParameter("command");
		System.out.println("실험 : " + command);
		
		
		
		String savePath = "upload";	// 저장 파일.
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		request.setAttribute("uploadFilePath", uploadFilePath);
		
		System.out.println("매니저 서블릿에서. 업로드 저장 장소?");
		System.out.println(uploadFilePath);
		
	
		//-------------------------------------------------------
		System.out.println("매니저 서블릿 커맨드 : " + command);
		
		ActionFactoryManager af = ActionFactoryManager.getInstance();
		MAction action = af.getAction(command);

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
