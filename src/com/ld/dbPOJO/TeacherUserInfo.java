package com.ld.dbPOJO;

/**
 * 教师用户属性，包含 管理员，主考，监考 三种类型的属性
 * @author wjw
 *
 */
public class TeacherUserInfo {
	private String userType ;
	private String userName ;
	private String password;
	private String teacherName;
	private String teacherSex;
	private String teacherTel;
	private String teacherMobile;
	private String teacherPower;
	private String shooId;
	private String headImage;
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
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
}
