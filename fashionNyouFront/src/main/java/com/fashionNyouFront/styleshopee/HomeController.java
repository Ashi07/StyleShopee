package com.fashionNyouFront.styleshopee;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/")
	public String index() {
		return "index";
	}

	
	@RequestMapping(value = "/header")
	public String header() {
		return "header";
	}

	@RequestMapping(value = "/home")
	public String home() {
		return "index";
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/aboutUs")
	public String aboutUs() {
		return "aboutus";
	}

	@RequestMapping(value = "/contactUs")
	public String contactUs() {
		return "contactus";
	}
	
	@RequestMapping(value = "/registeration")
	public String Registeration() {
		return "registeration";
	}

	@RequestMapping(value = "/admin")
	public String Admin_home() {
		return "admin";
	}

}
