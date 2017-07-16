package de;

/**
 * Tribune entity. @author MyEclipse Persistence Tools
 */

public class Tribune implements java.io.Serializable {

	// Fields

	private Integer tid;
	private String tfounder;
	private String tmessage;
	private String ttitle;
	private String tkeyword;

	// Constructors

	/** default constructor */
	public Tribune() {
	}

	/** full constructor */
	public Tribune(String tfounder, String tmessage, String ttitle,
			String tkeyword) {
		this.tfounder = tfounder;
		this.tmessage = tmessage;
		this.ttitle = ttitle;
		this.tkeyword = tkeyword;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getTfounder() {
		return this.tfounder;
	}

	public void setTfounder(String tfounder) {
		this.tfounder = tfounder;
	}

	public String getTmessage() {
		return this.tmessage;
	}

	public void setTmessage(String tmessage) {
		this.tmessage = tmessage;
	}

	public String getTtitle() {
		return this.ttitle;
	}

	public void setTtitle(String ttitle) {
		this.ttitle = ttitle;
	}

	public String getTkeyword() {
		return this.tkeyword;
	}

	public void setTkeyword(String tkeyword) {
		this.tkeyword = tkeyword;
	}

}