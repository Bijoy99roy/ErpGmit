package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.StudentDetails;

public interface StudentRegisterRepository extends CrudRepository<StudentDetails, Integer> {
	
	@Query(value="SELECT * FROM studentdetails WHERE batch = :batch",nativeQuery = true)
	public ArrayList<StudentDetails> findByBatch(String batch);

	@Query(value="SELECT * FROM studentdetails WHERE batch = :batch AND department = :department",nativeQuery = true)
	public ArrayList<StudentDetails> showAllStudentDetails(String batch,String department);
	
	public StudentDetails findByrollNoAndPassword(long rollNo,String password);
}
