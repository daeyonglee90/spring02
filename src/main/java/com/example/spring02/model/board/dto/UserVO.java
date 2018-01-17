package com.example.spring02.model.board.dto;

public class UserVO {

	private String userId;		// 사용자 ID
	private String userPw; 		// 사용자 PW
	private String uname;		// 사용자이름
	private int upoint;			// 사용자적립포인트
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getUpoint() {
		return upoint;
	}
	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}
	
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userPw=" + userPw + ", uname=" + uname + ", upoint=" + upoint + "]";
	}
	
}
