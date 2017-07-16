package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.OptionDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OptionAction  extends ActionSupport{
	   
	   private String lianname;
	   private String less;
	   private String liantitle;
	   private String ans;
	   private String oaname;
	   private String obname;
	   private String ocname;
	   private String odname;
		public String getLianname() {
		return lianname;
	}
	public void setLianname(String lianname) {
		this.lianname = lianname;
	}
	public String getLess() {
		return less;
	}
	public void setLess(String less) {
		this.less = less;
	}
	public String getLiantitle() {
		return liantitle;
	}
	public void setLiantitle(String liantitle) {
		this.liantitle = liantitle;
	}
	public String getAns() {
		return ans;
	}
	public void setAns(String ans) {
		this.ans = ans;
	}
	public String getOaname() {
		return oaname;
	}
	public void setOaname(String oaname) {
		this.oaname = oaname;
	}
	public String getObname() {
		return obname;
	}
	public void setObname(String obname) {
		this.obname = obname;
	}
	public String getOcname() {
		return ocname;
	}
	public void setOcname(String ocname) {
		this.ocname = ocname;
	}
	public String getOdname() {
		return odname;
	}
	public void setOdname(String odname) {
		this.odname = odname;
	}
		public String execute() {
			ActionContext context=ActionContext.getContext();
			   HttpServletRequest request=ServletActionContext.getRequest();
			
			System.out.println(odname);
			System.out.println(ocname);
			System.out.println(less);
			System.out.println(lianname);
              OptionDao optionDao=new OptionDao();
              optionDao.cccc(Integer.valueOf(less), lianname, ans, oaname, obname, ocname, odname,liantitle);

	            return "success";
	    }
	  
}
