package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.AllinDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddtAction extends ActionSupport{
	   
	   private String arttitle;
	   private String content;
	   

		public String getArttitle() {
		return arttitle;
	}


	public void setArttitle(String arttitle) {
		this.arttitle = arttitle;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


		public String execute() {
			ActionContext context=ActionContext.getContext();
			   HttpServletRequest request=ServletActionContext.getRequest();
			   HttpSession session = request.getSession();
			    AllinDao  all=new AllinDao();
			String sss=  (String) session.getAttribute("sno");
			System.out.println(arttitle);
			System.out.println(content);
			System.out.println(sss);
             all.addt(sss, arttitle, content);
	            return "success";
	    }
	  
}
