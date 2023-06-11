package com.obs.service;

import java.util.List;

import com.obs.entity.Student;

public interface ObsTestService {

	public boolean loginFunction(String username, String password);

	public List<Student> addStudent();

	public String getStudentNameById(String studentId);

}
