package com.ld.dbPOJO;

/**
 * 
 * @author wjw
 *CREATE TABLE SH_Teacher
(
TeacherID INT NOT NULL PRIMARY KEY,
	UserName nvarchar(50) NULL,
	PassWord nvarchar(50) NULL,
	TeacherName varchar(50) NULL,
	TeacherSex varchar(10) NULL,
	TeacherTel varchar(50) NULL,
	TeacherMobile varchar(50) NULL,
	TeacherPower nvarchar(500) NULL,
	ShoolId int NULL,
	HeadImage nvarchar(255) NULL
);
 */
public class ShTeacher {
	private int teacherId;
	private String userName;
	private String password;
	private String teacherName;
	private String teacherSex;
	private String teacherTel;
	private String teacherMobile;
	private String teacherPower;
	private String shooId;
	private String headImage;
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getTeacherSex() {
		return teacherSex;
	}
	public void setTeacherSex(String teacherSex) {
		this.teacherSex = teacherSex;
	}
	public String getTeacherTel() {
		return teacherTel;
	}
	public void setTeacherTel(String teacherTel) {
		this.teacherTel = teacherTel;
	}
	public String getTeacherMobile() {
		return teacherMobile;
	}
	public void setTeacherMobile(String teacherMobile) {
		this.teacherMobile = teacherMobile;
	}
	public String getTeacherPower() {
		return teacherPower;
	}
	public void setTeacherPower(String teacherPower) {
		this.teacherPower = teacherPower;
	}
	public String getShooId() {
		return shooId;
	}
	public void setShooId(String shooId) {
		this.shooId = shooId;
	}
	public String getHeadImage() {
		return headImage;
	}
	public void setHeadImage(String headImage) {
		this.headImage = headImage;
	}
	
	
	
}
