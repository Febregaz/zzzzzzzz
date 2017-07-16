package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.AllinDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SosoAction extends ActionSupport{
	   
	private String sohu;
	
		public String getSohu() {
		return sohu;
	}

	public void setSohu(String sohu) {
		this.sohu = sohu;
	}

		public String execute() {
			ActionContext context=ActionContext.getContext();
			   HttpServletRequest request=ServletActionContext.getRequest();
			   HttpSession session = request.getSession();
			    AllinDao  all=new AllinDao();
			String sss=  (String) session.getAttribute("sno");
		
			System.out.println(sohu);
           List so= all.cour(sohu);
           context.put("so", so);
       
	            return "success";
	    }
	  
}
