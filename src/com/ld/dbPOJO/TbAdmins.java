package com.ld.dbPOJO;


public class TbAdmins {
	private int id;
	private String UserName ;
	private String PassWord ;
	private String TeacherName ;
	private String TeacherSex ;
	private String HeadImage ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	public String getTeacherName() {
		return TeacherName;
	}
	public void setTeacherName(String teacherName) {
		TeacherName = teacherName;
	}
	public String getTeacherSex() {
		return TeacherSex;
	}
	public void setTeacherSex(String teacherSex) {
		TeacherSex = teacherSex;
	}
	public String getHeadImage() {
		return HeadImage;
	}
	public void setHeadImage(String headImage) {
		HeadImage = headImage;
	}
	
}
