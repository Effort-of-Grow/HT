package com.ht.project.login.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ht.project.login.mapper.LoginMapper;

@RestController
public class LoginAjaxController {

	@Autowired private LoginMapper mapper;
	
	@RequestMapping(value = "login/userLogin", method = { RequestMethod.POST })	
	public String userlogin(@RequestParam(value = "userId" , required = false) String userId,@RequestParam(value = "password" , required = false)  String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("아이디 확인 : " + userId);
		System.out.println("비밀번호 확인 : " + password);
		map.put("userId", userId);
		map.put("password", password);
		// User 정보 가져오기
		String login = mapper.selectUser(map);
		
		System.out.println("확인 : " + login);
		
		return login;
	}
	
}
