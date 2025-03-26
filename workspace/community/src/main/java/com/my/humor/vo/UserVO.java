package com.my.humor.vo;

public class UserVO {

	private String userId;
	private String userPass;
	private String userPassRe;
	private String nickname;
	private String email;
	private String gender;
	private int age;
	private String pNumber;
	private String joinDate;
	private int role;
	
	//getter
	public String getUserId() {return userId;}
	public String getUserPass() {return userPass;}
	public String getUserPassRe() {return userPassRe;}
	public String getNickname() {return nickname;}
	public String getEmail() {return email;}
	public String getGender() {return gender;}
	public int getAge() {return age;}
	public String getpNumber() {return pNumber;}
	public String getJoinDate() {return joinDate;}
	public int getRole() {return role;}
	
	//setter
	public void setUserId(String userId) {this.userId = userId;}
	public void setUserPass(String userPass) {this.userPass = userPass;}
	public void setUserPassRe(String userPassRe) {this.userPassRe = userPassRe;}
	public void setNickname(String nickname) {this.nickname = nickname;}
	public void setEmail(String email) {this.email = email;}
	public void setGender(String gender) {this.gender = gender;}
	public void setAge(int age) {this.age = age;}
	public void setpNumber(String pNumber) {this.pNumber = pNumber;}
	public void setJoinDate(String joinDate) {this.joinDate = joinDate;}
	public void setRole(int role) {this.role = role;}
	
}
