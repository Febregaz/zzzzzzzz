package action;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import service.UploadDao;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {

	private String videoname;
	private String less;
	
	public String getVideoname() {
		return videoname;
	}

	public void setVideoname(String videoname) {
		this.videoname = videoname;
	}

	public String getLess() {
		return less;
	}

	public void setLess(String less) {
		this.less = less;
	}



	private File uploadfile;
	private String uploadfileFileName;
	private String uploadfileContentType;

	public String getUploadfileFileName() {
		return uploadfileFileName;
	}

	public void setUploadfileFileName(String uploadfileFileName) {
		this.uploadfileFileName = uploadfileFileName;
	}

	public String getUploadfileContentType() {
		return uploadfileContentType;
	}

	public void setUploadfileContentType(String uploadfileContentType) {
		this.uploadfileContentType = uploadfileContentType;
	}

	public File getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(File uploadfile) {
		this.uploadfile = uploadfile;
	}

	

	public String execute() {
		
		System.out.println(uploadfile);
		System.out.println(videoname);
		System.out.println(less);
		System.out.println(uploadfileFileName);
		System.out.println(uploadfileContentType);
		
		
		  String uploadPath = ServletActionContext. getServletContext().getRealPath("./") + File.separator + "media";
		 
		  // 如果目录不存在则创建
	        File uploadDir = new File(uploadPath);
	        if (!uploadDir.exists()) {
	            uploadDir.mkdir();
	        }
	      
	        File savaFile=new File (uploadPath,uploadfileFileName);
			  uploadfile.renameTo(savaFile);	
			UploadDao uploaddao=new UploadDao();
			uploaddao.cccc(videoname,Integer.valueOf(less),uploadfileFileName);
			  
		return "success";
		

	}
}
