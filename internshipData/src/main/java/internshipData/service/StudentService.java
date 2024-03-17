package internshipData.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import internshipData.dao.StudentDao;
import internshipData.model.Student;

@Service
public class StudentService {
	@Autowired
	private StudentDao studentDao;
	public int createStudent(Student student)
	{
		return this.studentDao.saveStudent(student);
	}
	
}
