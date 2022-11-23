package com.ht.project.login.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {

	String selectOne();
	// User 정보 확인
	String selectUser(Map<String, Object> map);

}
