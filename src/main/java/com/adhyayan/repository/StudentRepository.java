package com.adhyayan.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.adhyayan.model.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Integer>{

	//custome method in repository interface
	public Student findByRollno(int rollno);
	
	public Student findByUsernameAndPassword(String username, String password);
}
