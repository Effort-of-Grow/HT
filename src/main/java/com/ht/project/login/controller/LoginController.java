package com.ht.project.login.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String lolgin(Locale locale, Model model) {								
		return "/login/loginPage";
	}
	
	@RequestMapping(value = "/consentTerm", method = RequestMethod.GET)
	public String consentTerm(Locale locale, Model model) {								
		return "/login/consentTermPage";
	}
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {								
		return "/login/signupPage";
	}
}
