package com.obs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obs.entity.Student;
import com.obs.service.ObsTestService;

@Controller
@RequestMapping("/obs")
public class ObsTestController {

	@Autowired
	private ObsTestService obsTestService;

	@RequestMapping("/login")
	public String showLoginPage(Model model) {

		return "login-page";

	}

	@PostMapping("/loginPageFunction")
	public String loginPageFunction(@RequestParam("userId") String username, @RequestParam("password") String password,
			Model model) {

		model.addAttribute("userId", username);

		List<Student> addStudent = new ArrayList<>();

		addStudent = obsTestService.addStudent();

		model.addAttribute("students", addStudent);

		if (obsTestService.loginFunction(username, password)) {
			return "welcome-page";

		}

		return "error-page";
	}

	@RequestMapping("/popUpDialog")
	public String popUpNameDialog(HttpServletRequest request, Model model) {
		String studentId = request.getParameter("studentId");
		String getStudentName = null;
		getStudentName = obsTestService.getStudentNameById(studentId);
		model.addAttribute("studentName", getStudentName);
		return "popup-dialog";
	}

}
