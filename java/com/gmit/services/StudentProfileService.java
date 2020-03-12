package com.gmit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.StudentDetails;
import com.gmit.repository.StudentRegisterRepository;

@Service
public class StudentProfileService {

	@Autowired
	private StudentRegisterRepository studentregisterrepository;
	
	
	public StudentDetails findByRollNoAndPassword(long rollNo, String password) {
		
		return studentregisterrepository.findByrollNoAndPassword(rollNo,password);
	}


	public StudentDetails getStudentDetail(int id) {
		
		return studentregisterrepository.findById(id).orElse(new StudentDetails());
	}


	public StudentDetails updateProfile(StudentDetails studentdetail) {
		
		return studentregisterrepository.save(studentdetail);
	}

}
