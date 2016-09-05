package com.ld.controller;

import java.io.PrintWriter;
import java.sql.Connection;

import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ld.utils.ConnectionManager;

/** 
 * @Version:V6.0
 */
@Controller
public class mainController {
	
	@RequestMapping(value="main",method=RequestMethod.GET)
	public String dsgMain(){
		return "/design/main";
	}
	
	@RequestMapping(value="top",method=RequestMethod.GET)
	public String dsgTop(){
		return "/design/top";
	}
	
	@RequestMapping(value="left",method=RequestMethod.GET)
	public String dsgLeft(){
		return "/design/left";
	}
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String dsgIndex(){
		return "/design/index";
	}
	
	

	
}
