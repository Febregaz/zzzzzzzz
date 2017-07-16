package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.AllinDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TriAction  extends ActionSupport{
	   
	   

		public String execute() {
			ActionContext context=ActionContext.getContext();
			   HttpServletRequest request=ServletActionContext.getRequest();
			    AllinDao  all=new AllinDao();
			List tt= all.tri();
       context.put("tt", tt);
	            return "success";
	    }
	  

}
