package com.blah.controller;

import com.guest.controller.action.GAction;
import com.guest.controller.action.GAddCart;
import com.guest.controller.action.GCart;
import com.guest.controller.action.GCartBuy;
import com.guest.controller.action.GCartDelete;
import com.guest.controller.action.GCartUpdate;
import com.guest.controller.action.GJoin;
import com.guest.controller.action.GLogin;
import com.guest.controller.action.Start;

public class ActionFactoryGuest {

	private static ActionFactoryGuest instance = null;
	
	public static ActionFactoryGuest getInstance() {
		if(instance == null) {
			instance = new ActionFactoryGuest();
		}
		return instance;
	}
	
	
	public GAction getAction(String command) {
		GAction action = null;
		if (command.equals("start")) {
			action = new Start();
		} else if(command.equals("join_action")) {
			action = new GJoin();
		} else if(command.equals("login_action")) {
			action = new GLogin();
		} else if(command.equals("add_cart_action")) {
			action = new GAddCart();
		} else if(command.equals("cart_action")) {
			action = new GCart();
		} else if(command.equals("cart_delete")) {
			action = new GCartDelete();
		} else if(command.equals("cart_update")) {
			action = new GCartUpdate();
		} else if(command.equals("cart_buy")) {
			action = new GCartBuy();
		}
		
		return action;
	}
	
}
