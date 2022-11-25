package com.ht.project.login.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ht.project.login.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired private LoginService service;
	// 로그인 페이지 이동
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String lolgin(Locale locale, Model model) {
		String test = service.selectOne();		
		return "/login/loginPage";
	}
	// 로그아웃 
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		// 세션 초기화
		session.invalidate();
		ModelAndView mv = new ModelAndView("redirect:/");
	    return mv;
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
