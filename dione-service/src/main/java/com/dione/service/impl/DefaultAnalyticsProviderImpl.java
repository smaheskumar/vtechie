package com.dione.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.dione.eop.api.io.SearchRequest;
import com.dione.service.AnalyticsProvider;
import com.dione.utils.StringUtils;

@Service
public class DefaultAnalyticsProviderImpl implements AnalyticsProvider {

	@Override
	public SearchRequest getFilter(String externalUserId, String appType) {
		SearchRequest request = new SearchRequest();
		if(StringUtils.isNotEmpty(externalUserId) && externalUserId.equals("joe.test3@email.com")){
			List<String> tag = new ArrayList<String>();
			tag.add("GAMES");
			request.setTag(tag);
		}
		return request;
	}
}
