package action;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


import service.UploadDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OpAction extends ActionSupport {

	

	public String execute() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		 UploadDao uploadDao = new  UploadDao();	
		 
	   List  op1=uploadDao.cc("222");
	   
		
		 context.put("op1", op1);	  
		
	     return "success";
		

	}
}
