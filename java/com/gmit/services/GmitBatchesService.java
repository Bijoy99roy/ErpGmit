package com.gmit.services;

import java.util.ArrayList;

import javax.persistence.SecondaryTable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.GmitBatches;
import com.gmit.repository.GmitBatchesRepository;

@Service
public class GmitBatchesService {
	
	@Autowired
	private GmitBatchesRepository gmitbatchesrepositoy;
	
	
	public void saveBatches(GmitBatches gmitbatch)
	{
		gmitbatchesrepositoy.save(gmitbatch);
	}

	
	public ArrayList<String> getTop5Batches()
	{
		return gmitbatchesrepositoy.getTop5Batches();
	}
}
