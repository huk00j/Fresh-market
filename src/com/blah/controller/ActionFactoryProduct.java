package com.blah.controller;

import com.product.controller.action.PAction;
import com.product.controller.action.PproductDetail;
import com.product.controller.action.PproductList;

public class ActionFactoryProduct {

	private static ActionFactoryProduct instance = null;
	
	public static ActionFactoryProduct getInstance() {
		if(instance == null) {
			instance = new ActionFactoryProduct();
		}
		return instance;
	}
	
	
	public PAction getAction(String command) {
		PAction action = null;
		if(command.equals("product_List")) {
			action = new PproductList();
		} else if(command.equals("product_detail")) {
			action = new PproductDetail();
		}
	
		return action;
	}
}
