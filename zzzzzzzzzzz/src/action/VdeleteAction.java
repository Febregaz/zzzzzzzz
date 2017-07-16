package action;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import de.Video;
import impl.VideoDao;
import service.VideoDaoImpl;

public class VdeleteAction extends ActionSupport implements ModelDriven<Video>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Video v=new Video();

	public String delete(){
		System.out.println(v.getVname());
        File file = new File(ServletActionContext.getServletContext()
                .getRealPath("/upload")
                + "/" + v.getVname()+".mp4");
        file.delete();
		System.out.println("����000");
		VideoDao st = new VideoDaoImpl();
		System.out.println("����001:" + v.getVid());
		st.DeleteVideo(v.getVid());
		System.out.println("����003");
		return SUCCESS;
	}

	@Override
	public Video getModel() {
		// TODO Auto-generated method stub
		return this.v;
	}
}	
