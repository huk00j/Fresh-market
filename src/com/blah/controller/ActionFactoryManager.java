package com.blah.controller;

import com.manager.controller.action.MEnrollList;
import com.manager.controller.action.MAction;
import com.manager.controller.action.MModify;
import com.manager.controller.action.MSelectMod;
import com.manager.controller.action.MDelete;
import com.manager.controller.action.MEnroll;

public class ActionFactoryManager {

	private static ActionFactoryManager instance = null;
	
	public static ActionFactoryManager getInstance() {
		if(instance == null) {
			instance = new ActionFactoryManager();
		}
		return instance;
	}
	
	
	public MAction getAction(String command) {
		MAction action = null;
		if(command.equals("enroll_action")) {
			action = new MEnroll();
		} else if (command.equals("enroll_list_action")) {
			action = new MEnrollList();
		} else if (command.equals("delete_action")) {
			action = new MDelete();
		} else if (command.equals("modify_select_action")) {
			action = new MSelectMod();
		} else if (command.equals("modify_action")) {
			action = new MModify();
		}
		
		return action;
	}
	
}
