package internshipData.controller;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.output.DeferredFileOutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import internshipData.model.Student;
import internshipData.service.StudentService;

@Controller
public class internshipDataController {
	@Autowired
	private StudentService studentService;
	
	@RequestMapping
	public String home()
	{
		return "home";
	}
	
	@ModelAttribute
	public void commonData(Model p) {
	p.addAttribute("Header","Internship Data Collection");
	p.addAttribute("desc","GHRCEM");
	}
	
	@RequestMapping(path = "/submission")
	public String form()
	{
		return "data";
	}
	
	
	@RequestMapping(path = "/upload", method = RequestMethod.POST)
	public String end(@ModelAttribute Student student, Model model, 
			@RequestParam("uploadFile") CommonsMultipartFile file,HttpSession s) {
	    System.out.println(student);

	    if (student.getFirstName().isBlank() ||
	        student.getLastName().isBlank() ||
	        student.getBranch().isBlank() ||
	       
	        student.getMode().isBlank() ||
	        (student.getCollegeName() != null && student.getCollegeName().isBlank())) {
	        return "redirect:/data";
	    }
	    
	    System.out.println(file.getSize());
	    System.out.println(file.getContentType());
	    System.out.println(file.getOriginalFilename());
	    System.out.println(file.getName());
	    System.out.println(file.getStorageDescription());
	    byte[] data=file.getBytes();
	    String path=s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"image"+File.separator+file.getOriginalFilename();
	    System.out.println(path);
	    
	    try {
	    	FileOutputStream fos= new FileOutputStream(path);
	    	fos.write(data);
	    	fos.close();
	    	System.out.println("file uploaded");
	    	model.addAttribute("resume","uploaded successfully");
	    	model.addAttribute("filename",file.getOriginalFilename());
	    	
	    	}catch (IOException e) {
				e.printStackTrace();
				System.out.println("file upload error");
		    	model.addAttribute("filename",file.getOriginalFilename());
			}
	    
	    int createdStudent = this.studentService.createStudent(student);
	    model.addAttribute("msg", "User created with id" + createdStudent);

	    return "final";
	}
	


}
