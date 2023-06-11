package com.obs.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.obs.entity.Student;

@Service
public class ObsTestServiceImpl implements ObsTestService {

	private static final String hardcodedUsername = "obs";
	private static final String hardcodedPassword = "obs";
	private List<Student> students = new ArrayList<>();

	@Override
	public boolean loginFunction(String username, String password) {

		if (username.equals(hardcodedUsername) && password.equals(hardcodedPassword)) {

			return true;
		} else {
			return false;
		}

	}

	@Override
	public List<Student> addStudent() {
		students.clear();
		students.add(new Student("S1", "Luffy", 35, 1, false));
		students.add(new Student("S2", "Zoro", 70, 1, false));
		students.add(new Student("S3", "Sanji", 60, 1, false));
		students.add(new Student("S4", "Nami", 90, 1, false));
		students.add(new Student("S5", "Robin", 30, 2, false));
		students.add(new Student("S6", "Brooke", 32, 3, false));
		students.add(new Student("S7", "Chopper", 70, 3, false));
		students.add(new Student("S8", "Franky", 20, 3, false));
		calculatePassingRate();

		return students;
	}

	@Override
	public String getStudentNameById(String studentId) {

		for (Student student : students) {

			if (studentId.equals(student.getStudentId())) {
				return student.getName();

			}
		}

		return null;
	}

	public void calculatePassingRate() {

		for (Student student : students) {
			if (student.getMarks() >= 40) {
				student.setPass(true);
			}
		}

	}

}
