package com.ht.project.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ht.project.login.mapper.LoginMapper;

@Service
public class LoginService {

	@Autowired private LoginMapper mapper;
	
	public String selectOne() {			
		return mapper.selectOne();
	}

}
