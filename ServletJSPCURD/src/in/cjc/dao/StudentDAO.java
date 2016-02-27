package in.cjc.dao;

import java.util.List;
import in.cjc.model.Student;

public interface StudentDAO {
    public void addStudent(Student student );
    public void deleteStudent( int studentId );
    public void updateStudent( Student student );
    public List<Student> getAllStudents();
    public Student getStudentById( int studentId );
}
