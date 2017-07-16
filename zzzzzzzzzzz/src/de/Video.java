package de;

/**
 * Video entity. @author MyEclipse Persistence Tools
 */

public class Video implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer vid;
	private String vname;
	private Integer vstatus;
	private Integer vlid;
	private String vtitle;

	// Constructors

	/** default constructor */
	public Video() {
	}

	/** full constructor */
	public Video(String vname, Integer vstatus, Integer vlid, String vtitle) {
		this.vname = vname;
		this.vstatus = vstatus;
		this.vlid = vlid;
		this.vtitle = vtitle;
	}

	// Property accessors

	public Integer getVid() {
		return this.vid;
	}

	public void setVid(Integer vid) {
		this.vid = vid;
	}

	public String getVname() {
		return this.vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public Integer getVstatus() {
		return this.vstatus;
	}

	public void setVstatus(Integer vstatus) {
		this.vstatus = vstatus;
	}

	public Integer getVlid() {
		return this.vlid;
	}

	public void setVlid(Integer vlid) {
		this.vlid = vlid;
	}

	public String getVtitle() {
		return this.vtitle;
	}

	public void setVtitle(String vtitle) {
		this.vtitle = vtitle;
	}

}