package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.AllinDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class YanzhengAction extends ActionSupport{
	 
	public boolean aa;

	public boolean isAa() {
		return aa;
	}

	public void setAa(boolean aa) {
		this.aa = aa;
	}

	public String execute() {
		ActionContext context=ActionContext.getContext();
		   HttpServletRequest request=ServletActionContext.getRequest();
		   HttpSession session = request.getSession();
		    AllinDao  all=new AllinDao();
	String ano=(String) session.getAttribute("sno");
	Integer	apw=(Integer) session.getAttribute("pp");
	aa= all.yanzheng(ano,apw);	        	        	
        	 return "success";	        
    }



}
