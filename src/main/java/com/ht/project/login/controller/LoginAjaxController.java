package com.ht.project.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ht.project.login.mapper.LoginMapper;
import com.ht.project.login.model.LoginDto;

@RestController
public class LoginAjaxController {

	@Autowired private LoginMapper mapper;
	
	@RequestMapping(value = "login/userLogin", method = { RequestMethod.POST })	
	public LoginDto userlogin(@RequestParam(value = "userId" , required = false) String userId,@RequestParam(value = "password" , required = false)  String password, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("아이디 확인 : " + userId);
		System.out.println("비밀번호 확인 : " + password);
		map.put("userId", userId);
		map.put("password", password);
		// User 정보 가져오기
		LoginDto login = mapper.selectUser(map);
		
		System.out.println("확인 : " + login);
		
		// session에 user정보 넣기
		session.setAttribute("userId", login.getUserId());
		session.setAttribute("name", login.getName());
		
		return login;
	}
	@RequestMapping(value = "login/selectUserId", method = { RequestMethod.POST })	
	public String selectUserId(@RequestParam(value = "email" , required = false) String email) {
		Map<String, Object> map = new HashMap<String, Object>();	
		map.put("email", email);		
		// User ID 가져오기
		String userId = mapper.selectUserId(map);				
		return userId;
	}
	@RequestMapping(value = "login/selectUserPw", method = { RequestMethod.POST })	
	public String selectUserPw(@RequestParam(value = "userId" , required = false) String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("userId 확인 : " + userId);		
		map.put("userId", userId);		
		// User ID 가져오기
		String password = mapper.selectUserPw(map);
		
		System.out.println("확인 : " + password);		
		
		return password;
	}
	
}
