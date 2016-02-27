package in.cjc.service;

import java.util.List;
import in.cjc.model.Student;

public interface StudentService {
    public void addStudent(Student student );
    public void deleteStudent( int studentId );
    public void updateStudent( Student student );
    public List<Student> getAllStudents();
    public Student getStudentById( int studentId );
}
