package com.adhyayan.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.adhyayan.model.Student;
import com.adhyayan.servicei.StudentServiceI;
 
@Controller
public class StudentController {

	@Autowired
	StudentServiceI si;
	
	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	
	@RequestMapping("/login")
	public String loginPage()
	{
		return "login";
	}
	
	@RequestMapping("/register")
	public String regPage()
	{
		return "register";
	}
	
	@RequestMapping("/loginsuccess")
	public String loginSuccess(@RequestParam("username") String un, 
			@RequestParam("password") String ps,  Model m)
	{
		Student st = si.loginCheck(un, ps);
		
		if(st==null && un.equals("admin") && ps.equals("1234"))
		{
			Iterable<Student> studentList = si.getAllStudents();
			m.addAttribute("data", studentList);
			return "loginsuccess";
		}
		
		else if(st!=null && st.getUsername().equals(un) && st.getPassword().equals(ps))
		{
			List<Student> singleStudentList = new ArrayList<Student>();
			singleStudentList.add(st);
			m.addAttribute("data", singleStudentList);
			return "loginsuccess";
		}
		
		else 
		{
			return "login";
		}
		
	}
	
	@RequestMapping("/registersuccess")
	public String regSuccess(@ModelAttribute Student s)
	{
		System.out.println("In controller ....");
		System.out.println(s.getSname());
		si.saveStudent(s);
		return "login";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("rollno") int rollno, Model m)
	{
		si.deleteStudent(rollno);
		Iterable<Student> studentList = si.getAllStudents();
		m.addAttribute("data", studentList);
		return "loginsuccess";
	}
	
	@RequestMapping("/edit")
	public String editPage(@RequestParam("rollno") int rollno, Model m)
	{
		Student st = si.getStudentById(rollno);
		m.addAttribute("stu", st);
		return "edit";
	}
	
	@RequestMapping("/update")
	public String updateStudent(@ModelAttribute Student std, Model m)
	{
		si.saveStudent(std);
		Iterable<Student> studentList = si.getAllStudents();
		m.addAttribute("data", studentList);
		return "loginsuccess";
	}

}
