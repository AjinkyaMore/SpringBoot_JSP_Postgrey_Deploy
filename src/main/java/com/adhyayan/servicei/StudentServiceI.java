package com.adhyayan.servicei;

import com.adhyayan.model.Student;

public interface StudentServiceI {

	public void saveStudent(Student s);
	
	public Iterable<Student> getAllStudents();
	
	public void deleteStudent(int rollno);
	
	public Student getStudentById(int rollno);
	
	public Student loginCheck(String username, String password);
	
}
