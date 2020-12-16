package com.spring.myapp.persistence;

import javax.servlet.http.HttpSession;

import com.spring.myapp.domain.MemberVO;

public interface MemberDAO {
	// 회원가입
	public void signup(MemberVO vo) throws Exception;

	// 로그인
	public MemberVO signin(MemberVO vo) throws Exception;
}
