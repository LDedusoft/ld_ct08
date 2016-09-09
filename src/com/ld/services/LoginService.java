package com.ld.services;

import java.sql.Connection;

import javax.jms.Session;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.ld.dbPOJO.ShJiankao;
import com.ld.dbPOJO.ShTeacher;
import com.ld.dbPOJO.TbAdmins;
import com.ld.dbPOJO.TeacherUserInfo;
import com.ld.utils.ConnManager;
import com.ld.utils.MD5Util;

public class LoginService {
	public static TeacherUserInfo loginAction(String userName, String password,String type){
		Object params[] = {userName,MD5Util.MD5(password)};  
		Connection conn = ConnManager.getConn();
		String sql ="";
		TeacherUserInfo userInfo = new TeacherUserInfo();
		try {
			if("管理员".equals(type)){
				sql = "SELECT * FROM TBADMINS WHERE USERNAME=? AND PASSWORD=?";
				TbAdmins tbAdmins = (TbAdmins)new QueryRunner().query(conn, sql, new BeanHandler<TbAdmins>(TbAdmins.class),params);  
				 if(tbAdmins==null)return null;
				userInfo.setUserType("管理员");
				userInfo.setHeadImage(tbAdmins.getHeadImage());
				userInfo.setPassword(tbAdmins.getPassWord());
				userInfo.setShooId("");
				userInfo.setTeacherMobile("");
				userInfo.setTeacherName(tbAdmins.getTeacherName());
				userInfo.setTeacherPower("");
				userInfo.setTeacherSex(tbAdmins.getTeacherSex());
				userInfo.setTeacherTel("");
				userInfo.setUserName(tbAdmins.getUserName());
			}else if ("主考".equals(type)) {
				 sql = "SELECT * FROM SH_Teacher WHERE USERNAME=? AND PASSWORD=?";
				 ShTeacher shTeacher =(ShTeacher)new QueryRunner().query(conn, sql, new BeanHandler<ShTeacher>(ShTeacher.class),params);  
				 if(shTeacher==null)return null;
				 userInfo.setUserType("主考");
					userInfo.setHeadImage(shTeacher.getHeadImage());
					userInfo.setPassword(shTeacher.getPassword());
					userInfo.setShooId(shTeacher.getShooId());
					userInfo.setTeacherMobile(shTeacher.getTeacherMobile());
					userInfo.setTeacherName(shTeacher.getTeacherName());
					userInfo.setTeacherPower(shTeacher.getTeacherPower());
					userInfo.setTeacherSex(shTeacher.getTeacherSex());
					userInfo.setTeacherTel(shTeacher.getTeacherTel());
					userInfo.setUserName(shTeacher.getUserName());
			}else if ("监考".equals(type)) {
				 sql = "SELECT * FROM SH_JianKao WHERE USERNAME=? AND PASSWORD=?";
				 ShJiankao shJiankao =(ShJiankao)new QueryRunner().query(conn, sql, new BeanHandler<ShJiankao>(ShJiankao.class),params);  
				 if(shJiankao==null)return null;
				 userInfo.setUserType("监考");
					userInfo.setHeadImage(shJiankao.getHeadImage());
					userInfo.setPassword(shJiankao.getPassword());
					userInfo.setShooId(shJiankao.getShooId());
					userInfo.setTeacherMobile(shJiankao.getTeacherMobile());
					userInfo.setTeacherName(shJiankao.getTeacherName());
					userInfo.setTeacherPower(shJiankao.getTeacherPower());
					userInfo.setTeacherSex(shJiankao.getTeacherSex());
					userInfo.setTeacherTel(shJiankao.getTeacherTel());
					userInfo.setUserName(shJiankao.getUserName());
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userInfo;
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
