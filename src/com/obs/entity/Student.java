package com.obs.entity;

public class Student {
	private String studentId;
	private String name;
	private int marks;
	private int departmentId;
	private boolean pass;

	public Student(String studentId, String name, int marks, int departmentId, boolean pass) {

		this.studentId = studentId;
		this.name = name;
		this.marks = marks;
		this.departmentId = departmentId;
		this.pass = pass;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public boolean isPass() {
		return pass;
	}

	public void setPass(boolean pass) {
		this.pass = pass;
	}

}