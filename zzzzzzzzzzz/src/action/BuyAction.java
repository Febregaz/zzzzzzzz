package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.AllinDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BuyAction extends ActionSupport{
	 
	public boolean rr;

	
	public boolean isRr() {
		return rr;
	}


	public void setRr(boolean rr) {
		this.rr = rr;
	}


	public String execute() {
		ActionContext context=ActionContext.getContext();
		   HttpServletRequest request=ServletActionContext.getRequest();
		   HttpSession session = request.getSession();
		    AllinDao  all=new AllinDao();
	String ano=(String) session.getAttribute("sno");
	Integer	apw=(Integer) session.getAttribute("pp");
	rr= all.buy(ano,apw);	        	        	
       return "success";	        
    }



}
