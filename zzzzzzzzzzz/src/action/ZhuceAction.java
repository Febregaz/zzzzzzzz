package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.AllinDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ZhuceAction extends ActionSupport{
	   
	
		   
		   private String ano;
		   private String apw;
		   

			

			public String execute() {
				ActionContext context=ActionContext.getContext();
				   HttpServletRequest request=ServletActionContext.getRequest();
				   HttpSession session = request.getSession();
				    AllinDao  all=new AllinDao();
			
				
			
	          boolean aa= all.zhuce(ano,apw);
		         if(aa==true)
		         {	        	
		        	 return "success";
		         }
		        	 
		         else
		         {
		        	 session.setAttribute("smm", 11);
		        	 return "failer";
		         }
		        	 
		    }




			public String getAno() {
				return ano;
			}




			public void setAno(String ano) {
				this.ano = ano;
			}




			public String getApw() {
				return apw;
			}




			public void setApw(String apw) {
				this.apw = apw;
			}
		  
	  
}
