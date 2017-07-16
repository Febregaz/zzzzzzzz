package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.CourseDao;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import de.Course;

public class ListaAction extends ActionSupport{
	   
	   private String zero;
	   private String fe;
 private List course;
  public String getZero() {
		return zero;
	}

	public void setZero(String zero) {
		this.zero = zero;
	}

	public String getFe() {
		return fe;
	}

	public void setFe(String fe) {
		this.fe = fe;
	}

		public String execute() {
			ActionContext context=ActionContext.getContext();
						
			System.out.println("111");
	       CourseDao courseDao = new CourseDao();
	      
	   System.out.println(fe);
	   System.out.println(zero);
	     course =courseDao.course(fe,zero);
		      
		    context.put("course", course);
		       
		       return "success";
		}

		public List getCourse() {
			return course;
		}

		public void setCourse(List course) {
			this.course = course;
		}
		
}

	