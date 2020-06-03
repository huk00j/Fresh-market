package com.guest.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.guestDAO;
import com.blah.dto.cartDTO;

public class GAddCart implements GAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		HttpSession sid = request.getSession();
		
		int amount = Integer.valueOf(request.getParameter("pAmount"));
		int price = Integer.valueOf(request.getParameter("pPrice"));
//		int total = amount * price;
//		System.out.println(amount + " * " + total + " = " + total);

		cartDTO cdto = new cartDTO();
		cdto.setId(request.getParameter("pId"));
		cdto.setNum(Integer.valueOf(request.getParameter("pNum")));
		cdto.setName(request.getParameter("pName"));
		cdto.setAmount(amount);
		cdto.setPrice(price);
		
		System.out.println("아이디 : " + cdto.getId());
		System.out.println("상품 번호 : " + cdto.getNum());
		System.out.println("상품명 : " + cdto.getName());
		System.out.println("수량 : " + cdto.getAmount());
		System.out.println("가격 : " + cdto.getPrice());
		
		
		guestDAO gdao = guestDAO.getInstace();
		int check = gdao.insertCart(cdto);
		
		if(check == 0) {
			System.out.println("장바구니 담기 실패");
		} else {
			System.out.println("장바구니 담기 성공");
		}
		
		String url ="./freshshop-master/shop-detail.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
