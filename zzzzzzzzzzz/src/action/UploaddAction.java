package action;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import de.Video;
import impl.VideoUploadDao;
import service.VideoUploadImpl;

public class UploaddAction extends ActionSupport implements ModelDriven<Video>{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//<s:file label="�ϴ��ļ���" name="upload"></s:file>
    private File upload;//����Ӧ�ú��ϴ�ҳ��name����ֵ����һ��
    private String uploadContentType;//����ֵ+ContentType
    private String uploadFileName;//����ֵ+FielName
    private Video v=new Video();
    
    public void setUpload(File upload) {
        this.upload = upload;
    }

    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String upload() {
        File destFile = new File(ServletActionContext.getServletContext()
                .getRealPath("/upload")
                + "/" + uploadFileName);
        try {    
            //������
            FileUtils.copyFile(upload, destFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
		System.out.println("����0000");
		System.out.println(v.getVname());
		System.out.println(v.getVlid());
		VideoUploadDao st = new VideoUploadImpl();
		System.out.println("����0001");
		st.AddVideo(v);
		System.out.println("����0005");
        return SUCCESS;
    }

	@Override
	public Video getModel() {
		// TODO Auto-generated method stub
		return this.v;
	}
}