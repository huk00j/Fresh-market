package com.manager.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.productDAO;
import com.blah.dto.productDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MModify implements MAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("??????????????????????????????????????");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int uploadFileSizeLimit = 5 * 1024 * 1024;	//최대 파일 크기 5MB로 제한.
		String encType = "UTF-8";
		
		String uploadFilePath = (String) request.getAttribute("uploadFilePath");
		
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
				System.out.println("파일 업로드 수정 되지 않았음");
			} else {
//				out.println("<br> 이름 : "  + multi.getParameter("enrollname"));
//				out.print("<br> 제 &nbsp); 목 : " + multi.getParameter("title"));
				System.out.println("파일 업로드 수정 성공");
			}
		} catch (Exception e) {
			System.out.println("예외 발생 : " + e);
		}
		
		
		String num = multi.getParameter("modNum");
		String type = multi.getParameter("modifytype");
		String name = multi.getParameter("modifyname");
		String amount = multi.getParameter("modifyamount");
		String price = multi.getParameter("modifyprice");
		String origin = multi.getParameter("modifyorigin");
		String introduce = multi.getParameter("modifyintroduce");
		String image = multi.getParameter("modifyimage");
		
		productDTO pdto = new productDTO();
		pdto.setNum(Integer.valueOf(num));
		pdto.setType(type);
		pdto.setName(name);
		pdto.setAmount(Integer.valueOf(amount));
		pdto.setPrice(Integer.valueOf(price));
		pdto.setOrigin(origin);
		pdto.setIntroduce(introduce);
		pdto.setImage(image);
		
		System.out.println("타입 : " + type);
		System.out.println("네임 : " + name);
		System.out.println("수량 : " + amount);
		System.out.println("가격 : " + price);
		System.out.println("원산지 : " + origin);
		System.out.println("소개 : " + introduce);
		
		productDAO pdao = productDAO.getInstace();
		int check = pdao.updateModProduct(pdto);
		
		if(check == 0) {
			System.out.println("수정 실패");
		} else {
			System.out.println("수정 성공");
		}
		
		String url = "./ManagerServlet?command=enroll_list_action";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
