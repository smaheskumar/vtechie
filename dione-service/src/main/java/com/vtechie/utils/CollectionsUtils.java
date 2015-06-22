package com.vtechie.utils;

import java.util.Collection;

import org.springframework.util.CollectionUtils;

public class CollectionsUtils {
	public boolean isEmpty(Collection<?> collection){
		return CollectionUtils.isEmpty(collection);
	}
	public boolean isNotEmpty(Collection<?> collection){
		return !isEmpty(collection);
	}
}
