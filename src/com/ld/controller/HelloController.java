package com.ld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** 
 * @Version:V6.0
 */
@Controller
public class HelloController {

	
	@RequestMapping(value="a.do",method=RequestMethod.GET)
	public String sayHello(){
		System.out.println("======================Hello World!!!================");
		return "basic";
	}
}
