package com.guest.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blah.dao.guestDAO;
import com.blah.dto.cartDTO;

public class GCartBuy implements GAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] no = request.getParameterValues("selectNo");
		
		ArrayList<String> list = new ArrayList<>();
		
		for (int i = 0; i < no.length; i++) {
			System.out.println("넘버 ? : "+ no[i]);
			System.out.println("-----------");
			list.add(no[i]);
		}
		
		guestDAO gdao = guestDAO.getInstace();
		ArrayList<cartDTO> clist = gdao.selectBuy(list);
		
		for(int i = 0 ; i<clist.size() ; i++) {
		System.out.println(i + " : " + clist.get(i).getNum());
		System.out.println(i + " name : " + clist.get(i).getName());
		System.out.println(i + " : " + clist.get(i).getAmount());
		System.out.println(i + " : " + clist.get(i).getPrice());
		}
		//---------------------------------------------------------------------
		
		ArrayList<Integer> blist = gdao.insertBuy(clist);
		
		for(int i=0; i < blist.size() ; i++) {
			if(blist.get(i) == null) {
				System.out.println("주문 등록 실패");
			} else {
				System.out.println("주문 등록 성공");
				
				ArrayList<Integer> dlist = gdao.deleteBuyCart(clist);
				for(int j = 0; j<dlist.size() ; j++) {
					if(dlist.get(j) == null) {
						System.out.println("장바구니 삭제 실패");
					} else {
						System.out.println("장바구니 삭제 성공");
					}
				}
			}
		}
		
		String url = "GuestServlet?command=cart_action";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
