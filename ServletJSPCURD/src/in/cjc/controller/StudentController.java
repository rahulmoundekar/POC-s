package in.cjc.controller;

import in.cjc.model.Student;
import in.cjc.service.StudentService;
import in.cjc.service.StudentServiceImplementation;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentController")
public class StudentController extends HttpServlet {

	StudentService studentService;
	private static final long serialVersionUID = 1L;
	public static final String lIST_STUDENT = "/listStudent.jsp";
	public static final String INSERT_OR_EDIT = "/student.jsp";

	public StudentController() {
		studentService = new StudentServiceImplementation();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			forward = lIST_STUDENT;
			int studentId = Integer.parseInt(request.getParameter("studentId"));
			studentService.deleteStudent(studentId);
			request.setAttribute("students", studentService.getAllStudents());
		} else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT_OR_EDIT;
			int studentId = Integer.parseInt(request.getParameter("studentId"));
			Student student = studentService.getStudentById(studentId);
			request.setAttribute("student", student);
		} else if (action.equalsIgnoreCase("insert")) {
			forward = INSERT_OR_EDIT;
		} else {
			forward = lIST_STUDENT;
			request.setAttribute("students", studentService.getAllStudents());
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Student student = new Student();
		student.setFirstName(request.getParameter("firstName"));
		student.setLastName(request.getParameter("lastName"));
		student.setCourse(request.getParameter("course"));
		student.setYear(Integer.parseInt(request.getParameter("year")));
		String studentId = request.getParameter("studentId");

		if (studentId == null || studentId.isEmpty())
			studentService.addStudent(student);
		else {
			student.setStudentId(Integer.parseInt(studentId));
			studentService.updateStudent(student);
		}
		RequestDispatcher view = request.getRequestDispatcher(lIST_STUDENT);
		request.setAttribute("students", studentService.getAllStudents());
		view.forward(request, response);
	}
}
