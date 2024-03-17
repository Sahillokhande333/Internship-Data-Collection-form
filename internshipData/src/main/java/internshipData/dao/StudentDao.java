package internshipData.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import internshipData.model.Student;


@Repository
public class StudentDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveStudent(Student student)
	{
		int id=(Integer)this.hibernateTemplate.save(student);
		return id;
	}


}
