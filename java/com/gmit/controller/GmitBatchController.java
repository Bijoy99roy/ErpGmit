package com.gmit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.GmitBatches;
import com.gmit.services.GmitBatchesService;

@Controller
public class GmitBatchController {

	@Autowired
	private GmitBatchesService gmitbatchesservice;
	
	@RequestMapping(method = RequestMethod.POST,value="/save-batches")
	public void saveBatches(@RequestParam GmitBatches gmitbatch)
	{
		
		gmitbatchesservice.saveBatches(gmitbatch);
	}
}
