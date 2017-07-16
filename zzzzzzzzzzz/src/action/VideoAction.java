package action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import de.Video;
import impl.VideoDao;
import service.VideoDaoImpl;

public class VideoAction extends ActionSupport implements ModelDriven<Video> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Video v = new Video();

	public String query() {
		VideoDao st = new VideoDaoImpl();
		System.out.println("����0");
		ActionContext context = ActionContext.getContext();
		List<Video> list = st.QueryAllVideo();
		System.out.println("����1");
		System.out.println("listΪ�գ���" + list.size());
		if (list != null && list.size() > 0) {
			System.out.println("����2");
			// request.setAttribute("student_list", list);
			context.put("video_list", list);
			// System.out.println("����3");
			// application.setAttribute("student_list", list);
			return "Video_Query_Success";
		} else {
			return "Video_Query_Failure";
		}
	}

	@Override
	public Video getModel() {
		// TODO Auto-generated method stub
		return this.v;
	}
}
