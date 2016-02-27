package in.cjc.service;

import in.cjc.dao.StudentDAO;
import in.cjc.dao.StudentDAOImplementation;
import in.cjc.model.Student;

import java.util.List;

public class StudentServiceImplementation implements StudentService {

	private StudentDAO dao;
	
	public StudentServiceImplementation() {
		dao = new StudentDAOImplementation();
	}
	
	@Override
	public void addStudent(Student student) {
			dao.addStudent(student);
	}

	@Override
	public void deleteStudent(int studentId) {
			dao.deleteStudent(studentId);
	}

	@Override
	public void updateStudent(Student student) {
			dao.updateStudent(student);
	}

	@Override
	public List<Student> getAllStudents() {
		return dao.getAllStudents();
	}

	@Override
	public Student getStudentById(int studentId) {
		return dao.getStudentById(studentId);
	}

}
