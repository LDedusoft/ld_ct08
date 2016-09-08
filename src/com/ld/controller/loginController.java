package com.ld.controller;

import java.io.PrintWriter;
import java.sql.Connection;

import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String dsgLoginAction(String userName,String password,RedirectAttributes attr){
		boolean isOk = LoginService.loginAction(userName, password);
		if(isOk){
			return "redirect:/main";  //跳转到main请求
		}else{
			attr.addFlashAttribute("userName", userName);
			attr.addFlashAttribute("password", password);
			attr.addFlashAttribute("error", "用户名或密码错误");
			return "redirect:/designLogin"; //跳转到designLogin请求
		}
		
	}
	
	

	public void testInsert(String name,String time) {  
	    final String SQL = "insert into TBL_USERS VALUES(?,?,?,?)";  
	    Connection conn = null;
	    try {  
	        if (null == conn || conn.isClosed())  
	            conn = ConnManager.getConn();  
	        int result = new QueryRunner().update(conn, SQL, new Object[] { (int)(1+Math.random()*(10000-1+1)),name, "123",time });  
	        if (0 < result)  
	            System.out.println("数据插入成功...");  
	    } catch (Exception e) {  
	        e.printStackTrace();  
	    } finally {  
	    	ConnManager.closeConn(conn);  
	    }  
	} 
	
	
}

	
