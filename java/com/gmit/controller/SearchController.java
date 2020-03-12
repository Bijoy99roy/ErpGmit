package com.gmit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {
	
	
	@RequestMapping(value="/getvalues",method=RequestMethod.POST)
	public void searchStudent(@RequestParam(value="firstArray") String[] firstArray,@RequestParam(value="secondArray") String[] secondArray,@RequestParam(value="thirdArray") String[] thirdArray)
	{
		System.out.println(firstArray[0]);
		System.out.println(secondArray[0]);
		System.out.println(thirdArray[0]);
	}
	
	@RequestMapping("/hi")
	public String hi()
	{
		return "searchStudent";
	}

}
