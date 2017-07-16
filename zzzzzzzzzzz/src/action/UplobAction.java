package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.UploadDao;

import com.opensymphony.xwork2.ActionContext;

public class UplobAction {

	private String zz;
	private List op2;
	

	public String getZz() {
		return zz;
	}


	public void setZz(String zz) {
		this.zz = zz;
	}


	public List getOp2() {
		return op2;
	}


	public void setOp2(List op2) {
		this.op2 = op2;
	}


	public String execute() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		 UploadDao uploadDao = new  UploadDao();	   
	   op2=uploadDao.ccc(Integer.valueOf(zz));
	   
		
		
		
	     return "success";
		

	}
}
