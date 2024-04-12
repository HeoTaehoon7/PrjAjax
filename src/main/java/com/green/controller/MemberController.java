package com.green.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.domain.MemberVo;

@Controller
public class MemberController {
	
	@RequestMapping("/")  
	public String  home() {
		return "redirect:/WriteForm";
	}
	
	@RequestMapping("/WriteForm")
	public String  writeForm() {
		return "memreg";
	}
	
	@RequestMapping("/Write")
	public String  write(MemberVo vo) {
		// db 저장 ...
		System.out.println("저장완료" + vo);
		return "memlist";
	}
	
	@RequestMapping("/IdDupCheck")
	@ResponseBody
	public String  idDupCheck(MemberVo vo) {
		// db id 중복체크 결과(서버data) 를 html 에 돌려준다
		if(vo.getId().equals("aaa")) {
			return "<h2 style='color:red'>사용할 수 없는 아이디입니다</h2>";			
		} else {
			return "<h2 style='color:green'>사용가능한 아이디입니다</h2>";
		}
	}
	
	
}



