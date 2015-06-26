package com.dione.model.request;

import java.io.Serializable;

public class PersonalOfferRequest implements Serializable {
	private static final long serialVersionUID = 1628182745590846134L;
	
	private String appUserId;
	private String appType;
	private Double latitude;
	private Double longitude;
	public String getAppUserId() {
		return appUserId;
	}
	public void setAppUserId(String appUserId) {
		this.appUserId = appUserId;
	}
	public String getAppType() {
		return appType;
	}
	public void setAppType(String appType) {
		this.appType = appType;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	@Override
	public String toString() {
		return String
				.format("{appUserId:%s, appType:%s, latitude:%s, longitude:%s}",
						appUserId, appType, latitude, longitude);
	} 
	
}
