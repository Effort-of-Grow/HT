package com.ht.project.login.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ht.project.login.model.LoginDto;

@Mapper
public interface LoginMapper {

	String selectOne();
	// User 정보 확인
	LoginDto selectUser(Map<String, Object> map);
	// UserId 가져오기
	String selectUserId(Map<String, Object> map);
	// UserPassword 가져오기
	String selectUserPw(Map<String, Object> map);

}
