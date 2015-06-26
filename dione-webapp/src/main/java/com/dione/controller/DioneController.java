package com.dione.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dione.eop.api.ApiClient;
import com.dione.eop.api.search.gen.BrowseOffersResponse;
import com.dione.model.request.PersonalOfferRequest;
import com.dione.service.DioneService;
import com.dione.service.sample.SampleService;

@Controller
public class DioneController {
	
	private final static Logger logger = LoggerFactory.getLogger(DioneController.class);
	@Autowired
	private SampleService sampleService;
	
	private ApiClient apiClient = new ApiClient();
	
	@Autowired
	private DioneService dioneService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model) {
 
		logger.debug("Inside controller");
 
		return "regionChart";
 
	}

	@RequestMapping(value = "/getregionoffers", method = RequestMethod.GET)
	
	public String getRegionOffers(ModelMap model) {
 
		logger.debug("Inside controller");
		
		return "regionPieChart";
 
	}
	
	@RequestMapping(value = "/getofferbyage/{region}", method = RequestMethod.GET)
	public String getOfferInfoByAge(ModelMap model,@PathVariable("region") String region) {
 
		logger.debug("Inside controller");
		model.addAttribute("region", region);
		return "groupChart";
 
	}

	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public String check(ModelMap model) {
		logger.debug("Inside controller");
		model.put("txns", sampleService.getAllTransactions());
		return "testPage";
	}
	
	@RequestMapping(value = "/masterpass", method = RequestMethod.GET)
	public String loadMasterpass(ModelMap model) {
		logger.debug("Inside controller");
		
      
		return "masterpass";
	}
	
	@RequestMapping(value = "/tempmasterpass", method = RequestMethod.GET)
	public String loadtempMasterpass(ModelMap model) {
		logger.debug("Inside controller");
		return "tempmasterpass";
	}
	
	@RequestMapping(value = "/personalizedoffer", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody BrowseOffersResponse.Return getPersonalizedOffer(ModelMap model, @ModelAttribute String email) {
		logger.debug("Inside controller");
		PersonalOfferRequest personalOfferRequest = new PersonalOfferRequest();
		personalOfferRequest.setAppUserId(email);
		BrowseOffersResponse personalizedOffer = dioneService.getPersonalizedOffer(personalOfferRequest);
		return personalizedOffer.getReturn();
	}
}
