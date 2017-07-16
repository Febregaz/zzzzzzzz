package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;





import service.LogDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoggAction  extends ActionSupport{
	   
	   
	private String sno;
	private String spw;

		public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getSpw() {
		return spw;
	}

	public void setSpw(String spw) {
		this.spw = spw;
	}

		public String execute() {
			//ActionContext context=ActionContext.getContext();
			  HttpServletRequest request=ServletActionContext.getRequest();
			  HttpSession session = request.getSession();
			  LogDao log=new LogDao();
			  if (log.cc(sno,spw)) {
				  System.out.println("sssss");
				  session.setAttribute("sno", sno);
		            return "success";
		        } else
		        {
		        	 System.out.println("kkkkkkkkk");
		        	 return "failer";
		        }
			
	    }
}
