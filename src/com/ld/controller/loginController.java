package com.ld.controller;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ld.dbPOJO.ShJiankao;
import com.ld.dbPOJO.ShTeacher;
import com.ld.dbPOJO.TbAdmins;
import com.ld.dbPOJO.TeacherUserInfo;
import com.ld.services.LoginService;
import com.ld.utils.ConnManager;

/** 
 * @Version:V6.0
 */
@Controller
public class loginController {
	
	@RequestMapping(value="designLogin",method=RequestMethod.GET)
	public String dsgLogin(){
		return "/design/design_login"; //打开design_login页面
	}
	
	
	@RequestMapping(value="loginAction",method=RequestMethod.POST)
	public String dsgLoginAction(String userName,String password,String type,RedirectAttributes attr,HttpSession httpSession){
		TeacherUserInfo userInfo = LoginService.loginAction(userName, password,type);
		if(userInfo!=null){
			httpSession.setAttribute("userInfo", userInfo);
			return "redirect:/main";  //跳转到main请求
		}else{
			attr.addFlashAttribute("userName", userName); 
			attr.addFlashAttribute("password", password);
			attr.addFlashAttribute("type", type);
			attr.addFlashAttribute("error", "用户名或密码错误");
			return "redirect:/designLogin"; //跳转到designLogin请求
		}
		
	}
	
	


	
	
}

	
