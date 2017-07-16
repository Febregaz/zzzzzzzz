package action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class HelloWorldAction  extends ActionSupport{
   
   

	public String execute() {
		ActionContext context=ActionContext.getContext();
		   HttpServletRequest request=ServletActionContext.getRequest();
		  String sno=request.getParameter("sno");
		  
		    String spw=request.getParameter("spw");
		System.out.println("111");
//       StudentDao studentDao = new StudentDao();
//      
//      System.out.println(studentDao.login(sno,spw));
//        if (studentDao.login(sno,spw)) {
//        	context.put("sno",sno);
//            return "success";
//        } else
            return "failer";
    }
  

}