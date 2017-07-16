package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;






import service.EnDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EnnAction extends ActionSupport {

	private Integer pp;

	
	public Integer getPp() {
		return pp;
	}


	public void setPp(Integer pp) {
		this.pp = pp;
	}


	public String execute() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("pp", pp);
		 EnDao enDao = new EnDao();	   
	     List  entry1 =enDao.li(pp);	/*章节*/
	     List  entry2 =enDao.cc(pp);    /*名称*/
	     List  entry3 =enDao.vv();      /*小章节*/
	     List  entry4 =enDao.oo();      /*练习题*/
	     session.setAttribute("entry2", entry2);	
		 //context.put("entry2", entry2);	  
		 session.setAttribute("entry1", entry1);
		 session.setAttribute("entry3", entry3);
		 session.setAttribute("entry4", entry4);
	     return "success";
		
	}
}
