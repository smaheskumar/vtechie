package com.dione.service;

import com.dione.eop.api.search.gen.BrowseOffersResponse;
import com.dione.model.request.PersonalOfferRequest;

public interface DioneService {
	BrowseOffersResponse getPersonalizedOffer(PersonalOfferRequest personalOfferRequest);
}
