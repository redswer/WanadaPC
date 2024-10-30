package com.wanada.model;

public class UserDTO {
	    private String userEmail;
	    private String userPassword;
	    private String gender;
	    private String userName;
	    private String tell;
	    private String userBirthdate;  // 타입을 String으로 변경
	    private String first_time;
	    private String last_time;
	    
	    
		public String getUserEmail() {
			return userEmail;
		}
		public void setUserEmail(String userEmail) {
			this.userEmail = userEmail;
		}
		public String getUserPassword() {
			return userPassword;
		}
		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getTell() {
			return tell;
		}
		public void setTell(String tell) {
			this.tell = tell;
		}
		public String getUserBirthdate() {
			return userBirthdate;
		}
		public void setUserBirthdate(String userBirthdate) {
			this.userBirthdate = userBirthdate;
		}
		public String getFirst_time() {
			return first_time;
		}
		public void setFirst_time(String first_time) {
			this.first_time = first_time;
		}
		public String getLast_time() {
			return last_time;
		}
		public void setLast_time(String last_time) {
			this.last_time = last_time;
		}
	
}