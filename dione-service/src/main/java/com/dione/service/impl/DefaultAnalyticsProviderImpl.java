package com.dione.service.impl;

import org.springframework.stereotype.Service;

import com.dione.eop.api.io.SearchRequest;
import com.dione.service.AnalyticsProvider;

@Service
public class DefaultAnalyticsProviderImpl implements AnalyticsProvider {

	@Override
	public SearchRequest getFilter(String externalUserId, String appType) {
		return new SearchRequest();
	}

}
