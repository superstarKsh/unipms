package com.uni.unipms.common.Model;

import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.commons.lang3.builder.ToStringBuilder;


public class SessionVO {

	private String groudID = "00000000";
	private String prjtID;
	private String userID;

	public SessionVO(){
		this.groudID = "00000000";
		this.prjtID  = null;
		this.userID  = null;
	}
	
	public String getGroupID() {
		return groudID;
	}
	
	public void setGroupID(String groudID) {
		this.groudID = groudID;
	}

	public String getPrjtID() {
		return prjtID;
	}
	
	public void setPrjtID(String prjtID) {
		this.prjtID = prjtID;
	}
	
	public String getUserID() {
		return userID;
	}
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
