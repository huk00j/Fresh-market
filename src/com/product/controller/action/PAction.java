package com.product.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface PAction {	// 인터페이스, execute를 통해서 request를 타고타고 쓸 수 있음.
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException;

}
