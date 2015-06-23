package com.dione.utils;

import java.util.Collection;

import org.springframework.util.CollectionUtils;

public class CollectionsUtils {
	public static boolean isEmpty(Collection<?> collection){
		return CollectionUtils.isEmpty(collection);
	}
	public static boolean isNotEmpty(Collection<?> collection){
		return !isEmpty(collection);
	}
}
