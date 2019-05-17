package com.h.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginCtrl {

	@RequestMapping(value="/login.web")
	public String getPage() {
System.out.println("=============getPage======================");



		return "./login";
	}
	
}
