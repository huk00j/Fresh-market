package com.manager.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.productDAO;
import com.blah.dto.productDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MEnroll implements MAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
		
//		String savePath = "upload";	// 다운 받는 경로. //서블릿에서 request로 보내옴.
		int uploadFileSizeLimit = 5 * 1024 * 1024;	//최대 파일 크기 5MB로 제한.
		String encType = "UTF-8";
		
		String uploadFilePath = (String) request.getAttribute("uploadFilePath");
		System.out.println("MEnroll 업로드 경로 : " + uploadFilePath);
		
		MultipartRequest multi = null;
		String fileName = null;
		try {
			multi = new MultipartRequest(
			request,	// request 객체.
			uploadFilePath,	// 서버상의 실제 디렉토리 : 변수명.
			uploadFileSizeLimit,	// 최대 업로드 파일 크기 : 변수명.
			encType,	// 인코딩 방법 : 변수명.
			new DefaultFileRenamePolicy());	// 동일 이름 존재시 새로운 이름 부여 메소드.
			
			fileName = multi.getFilesystemName("enrollfile");
			System.out.println("파일 이름 : " + fileName);

			if(fileName == null) {
				System.out.println("파일 업로드 되지 않았음");
			} else {
//				out.println("<br> 이름 : "  + multi.getParameter("enrollname"));
//				out.print("<br> 제 &nbsp); 목 : " + multi.getParameter("title"));
				System.out.println("파일 업로드 성공");
			}
		} catch (Exception e) {
			System.out.println("MEnroll 클래스 예외 발생 : " + e);
		}
		
		//------------------------------------------------------------------
		
		System.out.println("매니지 엔롤 액션 클래스입니다~");
		String url = "./freshshop-Manager/mProduct_enroll.jsp";
		
		String type = multi.getParameter("enrolltype");
		String name = multi.getParameter("enrollname");
		int amount = Integer.valueOf(multi.getParameter("enrollamount"));
		int price = Integer.valueOf(multi.getParameter("enrollprice"));
		String origin = multi.getParameter("enrollorigin");
		String introduce = multi.getParameter("enrollintroduce");
		System.out.println("777");
		String image = fileName;
		System.out.println("888");
		System.out.println("이미지 - " + image);
		System.out.println("999");
		
		productDTO pdto = new productDTO();
		pdto.setType(type);
		pdto.setName(name);
		pdto.setAmount(amount);
		pdto.setPrice(price);
		pdto.setOrigin(origin);
		pdto.setIntroduce(introduce);
		pdto.setImage(image);
		
		productDAO pdao = productDAO.getInstace();
		int check =pdao.insertProduct(pdto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
