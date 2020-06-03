package com.blah.controller;

import com.QnA.controller.action.QnAAction;
import com.QnA.controller.action.QnAAnswer;
import com.QnA.controller.action.QnAAnswerReply;
import com.QnA.controller.action.QnAList;
import com.QnA.controller.action.QnAQDetail;
import com.QnA.controller.action.QnAquestion;

public class ActionFactoryQnA {

	private static ActionFactoryQnA instance = null;
	
	public static ActionFactoryQnA getInstance() {
		if(instance == null) {
			instance = new ActionFactoryQnA();
		}
		return instance;
	}
	
	
	public QnAAction getAction(String command) {
		QnAAction action = null;
		if (command.equals("enroll_Question")) {
			action = new QnAquestion();
		} else if (command.equals("QnA_List")) {
			action = new QnAList();
		} else if (command.equals("QnA_Question_Detail")) {
			action = new QnAQDetail();
		} else if (command.equals("QnA_Answer")) {
			action = new QnAAnswer();
		} else if (command.equals("QnA_Answer_Reply")) {
			action = new QnAAnswerReply();
		}
		
		return action;
	}
	
}
