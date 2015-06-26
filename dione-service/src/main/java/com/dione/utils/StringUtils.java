package com.dione.utils;

public class StringUtils {

	public static boolean isNotEmpty(String externalUserId) {
		return !org.springframework.util.StringUtils.isEmpty(externalUserId);
	}

}
