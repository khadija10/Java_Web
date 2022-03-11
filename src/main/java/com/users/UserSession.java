package com.users;

public class UserSession {

	private static User user;
	private static boolean isOn = false;
	private static String type = "autre";
	public static User getUser() {
		return user;
	}
	public static void setUser(User user) {
		UserSession.user = user;
	}
	public static boolean isOn() {
		return isOn;
	}
	public static void setOn(boolean isOn) {
		UserSession.isOn = isOn;
	}
	public static String getType() {
		return type;
	}
	public static void setType(String type) {
		UserSession.type = type;
	}
	
	

}
