package com.dione.service;

import com.dione.eop.api.io.SearchRequest;

public interface AnalyticsProvider {
	public SearchRequest getFilter(String externalUserId, String appType);
}
