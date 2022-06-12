package com.singh.enterprises.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@CrossOrigin
public class Mapping {
	
	@RequestMapping("/login")
	public String Hello()
	{
		return "login";
	}

	@RequestMapping("/details")
	public String PersonalDetails()
	{
		return "Details";
	}
	
	@RequestMapping("/pwd")
	public String PreviousWorkDetails()
	{
		return "previousWorksDetails";
	}
	
	@RequestMapping("/ndf")
	public String ndf()
	{
		return "NoDataFound";
	}
	
}
