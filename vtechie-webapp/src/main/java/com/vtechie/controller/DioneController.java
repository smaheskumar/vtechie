package com.vtechie.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DioneController {
	
	private final static Logger logger = LoggerFactory.getLogger(DioneController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
 
		logger.debug("Inside controller");
 
		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "home";
 
	}

}
