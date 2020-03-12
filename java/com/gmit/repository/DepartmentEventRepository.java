package com.gmit.repository;

import org.springframework.data.repository.CrudRepository;

import com.gmit.model.DepartmentEventModel;

public interface DepartmentEventRepository extends CrudRepository<DepartmentEventModel, Integer> {

}
