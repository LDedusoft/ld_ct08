package com.ld.controller;

import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Connection;

import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ld.utils.ConnManager;

/** 
 * @Version:V6.0
 */
@Controller
public class mainController {

	
	@RequestMapping(value="hello",method=RequestMethod.GET)
	public String dsghello(){
		return "/design/hello";
	}
	
	
	@RequestMapping(value = "ajax", method=RequestMethod.POST)
	public void dsgajax(String name,String time,PrintWriter out){
		String a="你发送的数据："+name+"   "+time;
		try{
		}catch(Exception e){e.printStackTrace();};
		out.write(a);
	}
	  
	    
	
	@RequestMapping(value="window",method=RequestMethod.GET)
	public String dsgwindow(){
		return "/design/window";
	}
	
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
	
	@RequestMapping(value="shiTiGuanLi",method=RequestMethod.GET)
	public String dsgSTList(){
		return "/design/shiti_guanli/STList";
	}
	
	
	@RequestMapping(value="xiTongGuanLi",method=RequestMethod.GET)
	public String dsgXT_Guanli(){
		return "/design/xitong_shezhi/XT_Guanli";
	}
	
	@RequestMapping(value="jianKaoGuanLi",method=RequestMethod.GET)
	public String dsgjiankao_Guanli(){
		return "/design/xitong_shezhi/jiankao_Guanli";
	}
	
	@RequestMapping(value="xueXiaoGuanLi",method=RequestMethod.GET)
	public String dsgxuexiao_Guanli(){
		return "/design/xitong_shezhi/xuexiao_Guanli";
	}
	
	@RequestMapping(value="zhangHaoGuanLi",method=RequestMethod.GET)
	public String dsgzhanghao_Guanli(){
		return "/design/xitong_shezhi/zhanghao_Guanli";
	}
	
	@RequestMapping(value="zhuKaoGuanLi",method=RequestMethod.GET)
	public String dsgzhukao_Guanli(){
		return "/design/xitong_shezhi/zhukao_Guanli";
	}

	
}
