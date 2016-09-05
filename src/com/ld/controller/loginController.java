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
public class loginController {
	
	
	@RequestMapping(value="hello",method=RequestMethod.GET)
	public String sayHello(){
		return "/design/hello";
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public void ajax1(String name,String time, PrintWriter out) {
    String result="hello1 "+name+" "+time;
    testInsert(name,time);
    
    out.write(result);
  }
	

	public void testInsert(String name,String time) {  
	    final String SQL = "insert into TBL_USERS VALUES(?,?,?,?)";  
	    Connection conn = null;
	    try {  
	        if (null == conn || conn.isClosed())  
	            conn = ConnectionManager.getConnection();  
	        int result = new QueryRunner().update(conn, SQL, new Object[] { (int)(1+Math.random()*(10000-1+1)),name, "123",time });  
	        if (0 < result)  
	            System.out.println("数据插入成功...");  
	    } catch (Exception e) {  
	        e.printStackTrace();  
	    } finally {  
	        close(conn);  
	    }  
	} 
	
	public void close(Connection conn){
		try{
			if(conn!=null&&!conn.isClosed())
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
