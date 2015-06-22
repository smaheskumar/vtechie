package com.vtechie.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DioneController {
	
	private final static Logger logger = LoggerFactory.getLogger(DioneController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model) {
 
		logger.debug("Inside controller");
 
		return "regionChart";
 
	}

	@RequestMapping(value = "/getregionoffers", method = RequestMethod.GET)
	public String getRegionOffers(ModelMap model) {
 
		logger.debug("Inside controller");
		
		return "regionChart";
 
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
		return "testPage";
	}
	
	@RequestMapping(value = "/masterpass.com", method = RequestMethod.GET)
	public String loadMasterpass(ModelMap model) {
		logger.debug("Inside controller");
		return "masterpass";
	}
}
