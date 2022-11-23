package com.ht.project.login.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ht.project.login.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired private LoginService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String lolgin(Locale locale, Model model) {
		String test = service.selectOne();
		System.out.println("Mapper 확인 : "+ test);
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
