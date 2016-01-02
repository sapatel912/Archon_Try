package com.archon.domain;

public class User {
	private int userId;
	private String fullName;
	private String initial;
	private int contactNo;
	private String gender;
	private String photoPath;
	private String bio;
	private int countryId;
	private int loginId;
	
	private static int counter;
	
	public User() {
		counter++;
	}
	
	public static int getCounter() {
		return counter;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getInitial() {
		return initial;
	}
	public void setInitial(String initial) {
		this.initial = initial;
	}
	public int getContactNo() {
		return contactNo;
	}
	public void setContactNo(int contactNo) {
		this.contactNo = contactNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public int getCountryId() {
		return countryId;
	}
	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	
	@Override
	public String toString() {
		return getUserId() + ", " + getFullName() + ", " + getInitial() + ", " + getContactNo() + ", " + getGender() + ", " + getPhotoPath() + ", " + getBio() + ", " + getCountryId() + ", " + getLoginId();
	}
	
}
