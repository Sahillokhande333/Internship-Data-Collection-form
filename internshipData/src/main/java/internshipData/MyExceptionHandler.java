package internshipData;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ResponseStatus;


@ControllerAdvice
public class MyExceptionHandler {

	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@org.springframework.web.bind.annotation.ExceptionHandler(value=NullPointerException.class)
	public String ExceptionHandlerNull(Model m)
	{
		m.addAttribute("Exmsg","Null Pointer Exception has occured");
		return "exception";
	}

	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@org.springframework.web.bind.annotation.ExceptionHandler(value=NumberFormatException.class)
	public String ExceptionHandlerNumberFormat(Model m)
	{
		m.addAttribute("Exmsg","Number Format Exception has occured");
		return "exception";
	}
	
	
	
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@org.springframework.web.bind.annotation.ExceptionHandler(value=Exception.class)
	public String ExceptionHandlerGeneric(Model m)
	{
		m.addAttribute("Exmsg","Exception has occured");
		return "exception";
	}
	

}
