package action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import de.Admin;
import impl.AdminDao;
import service.AdminDaoImpl;

public class AdminAction extends ActionSupport implements ModelDriven<Admin> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin a = new Admin();

	public String query() {
		AdminDao st = new AdminDaoImpl();
		System.out.println("¼ì²âµã0");
		ActionContext context = ActionContext.getContext();
		List<Admin> list = st.QueryAllAdmin();
		System.out.println("¼ì²âµã1");
		System.out.println("listÎª¿Õ£¿£º" + list.size());
		if (list != null && list.size() > 0) {
			System.out.println("¼ì²âµã2");
			// request.setAttribute("student_list", list);
			context.put("admin_list", list);
			// System.out.println("¼ì²âµã3");
			// application.setAttribute("student_list", list);
			return "Admin_Query_Success";
		} else {
			return "Admin_Query_Failure";
		}
	}

	private InputStream inputStream;

	public InputStream getInputStream() {
		return inputStream;
	}

	public String delete() {
		try {
			System.out.println("¼à²âµã000");
			AdminDao st = new AdminDaoImpl();
			System.out.println("¼à²âµã001:" + a.getAname());
			st.DeleteAdmin(a.getAname());
			System.out.println("¼à²âµã003");
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return "Delete_Success";
	}

	public String modify() {
		System.out.println("¼à²âµã-0");
		System.out.println(a.getAname());
		System.out.println(a.getApw());
		System.out.println(a.getAtype());
		System.out.println(a.getAmessage());
		System.out.println(a.getAmoney());
		AdminDao st = new AdminDaoImpl();
		st.ModifyAdmin(a);
		return "Modify_Success";
	}

	public String add() {
		System.out.println("¼à²âµã0000");
		System.out.println(a.getAname());
		System.out.println(a.getApw());
		System.out.println(a.getAtype());
		System.out.println(a.getAmessage());
		System.out.println(a.getAmoney());
		AdminDao st = new AdminDaoImpl();
		System.out.println("¼à²âµã0001");
		st.AddAdmin(a);
		System.out.println("¼à²âµã0005");
		return "Add_Success";
	}

	public String go() {
		return "success";
	}

	public String iff() {
		System.out.println("¼à²âµã1");
		System.out.println("aname:" + a.getAname());
		AdminDao st = new AdminDaoImpl();
		st.FindByName(a.getAname());
		System.out.println("¼à²âµã2");
		if (st.FindByName(a.getAname()).getAtype().equals("1")) {
			return "student";
		} else if (st.FindByName(a.getAname()).getAtype().equals("2")) {
			return "teacher";
		} else {
			return "admin";
		}

	}

	public String out() {
		System.out.println("aa");
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		session.clear();
		return "success";

	}

	public String banji() {
		System.out.println("aname:"+a.getAname());
		AdminDao st = new AdminDaoImpl();
		System.out.println("¼ì²âµã0");
		ActionContext context = ActionContext.getContext();
		Admin list = st.FindByName(a.getAname());
		System.out.println("¼ì²âµã1");
		if (list != null) {
			System.out.println("¼ì²âµã2");
			// request.setAttribute("student_list", list);
			context.put("admin_list", list);
			// System.out.println("¼ì²âµã3");
			// application.setAttribute("student_list", list);
			return "success";
		} else {
			return "Admin_Query_Failure";
		}
	}

	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return this.a;
	}
}
