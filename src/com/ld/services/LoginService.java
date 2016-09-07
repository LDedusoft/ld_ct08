package com.ld.services;

public class LoginService {
	public static boolean loginAction(String userName, String password){
		boolean isOk = false;
		if("admin".equals(userName)&&"123".equals(password)){
			isOk = true;
		}
		return isOk;
	}
}
