package domain;

public class testUsers {
		public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
		int userID;
		String userName;
		String userPhone;
		String userPassword;
		@Override
		public String toString() {
			return "testUsers [userID=" + userID + ", userName=" + userName
					+ ", userPhone=" + userPhone + ", userPassword="
					+ userPassword + "]";
		}
		
		
}
