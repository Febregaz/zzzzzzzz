package action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import de.Comment;
import json.GetJson;
import net.sf.json.JSONArray;
import impl.AdminDao;
import impl.CommentDao;
import service.AdminDaoImpl;
import service.CommentDaoImpl;

public class CommentAction extends ActionSupport implements ModelDriven<Comment> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Comment c = new Comment();
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String query() {
		CommentDao st = new CommentDaoImpl();
		System.out.println("����0");
		// ActionContext context = ActionContext.getContext();
		List<Comment> list = st.QueryAllComment();
		System.out.println("����1");
		System.out.println("listΪ�գ���" + list.size());
		if (list != null && list.size() > 0) {
			System.out.println("����2");
			// request.setAttribute("student_list", list);
			System.out.println("����3");
			JSONArray json = JSONArray.fromObject(list);
			result = json.toString();
			System.out.println("����4");
			// String strjson=json.toString();
			System.out.println("����5");
			// context.put("comment_json", json);
			// System.out.println("����3");
			// application.setAttribute("student_list", list);
			return SUCCESS;
		} else {
			return "Comment_Query_Failure";
		}
	}

	public String query2() {
		CommentDao st = new CommentDaoImpl();
		System.out.println("����0");
		ActionContext context = ActionContext.getContext();
		List<Comment> list = st.QueryAllComment();
		System.out.println("����1");
		System.out.println("listΪ�գ���" + list.size());
		if (list != null && list.size() > 0) {
			System.out.println("����2");
			// request.setAttribute("student_list", list);
			System.out.println("����3");
			System.out.println("����4");
			// String strjson=json.toString();
			System.out.println("����5");
			context.put("comment_list", list);
			// System.out.println("����3");
			// application.setAttribute("student_list", list);
			return SUCCESS;
		} else {
			return "Comment_Query_Failure";
		}
	}

	public String add() {
		System.out.println("����0000");
		//c.setMfounder(mfounder);
		System.out.println(c.getMfounder());
		System.out.println(c.getMmessage());
		CommentDao st = new CommentDaoImpl();
		System.out.println("����0001");
		st.AddComment(c);
		System.out.println("����0005");
		return "Add_Success";
	}

	private InputStream inputStream;

	public InputStream getInputStream() {
		return inputStream;
	}

	public String delete() {
		try {
			System.out.println("����000");
			CommentDao st = new CommentDaoImpl();
			System.out.println("����001:" + c.getMid());
			st.DeleteComment(c.getMid());
			System.out.println("����003");
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

	@Override
	public Comment getModel() {
		// TODO Auto-generated method stub
		return this.c;
	}

}
