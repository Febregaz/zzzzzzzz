package de;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String aname;
	private String apw;
	private String atype;
	private String amessage;
	private Integer amoney;
	private String ban;

	// Constructors

	public String getBan() {
		return ban;
	}

	public void setBan(String ban) {
		this.ban = ban;
	}

	/** default constructor */
	public Admin() {
	}

	/** minimal constructor */
	public Admin(String aname) {
		this.aname = aname;
	}

	/** full constructor */
	public Admin(String aname, String apw, String atype, String amessage,
			Integer amoney) {
		this.aname = aname;
		this.apw = apw;
		this.atype = atype;
		this.amessage = amessage;
		this.amoney = amoney;
	}

	// Property accessors

	public String getAname() {
		return this.aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getApw() {
		return this.apw;
	}

	public void setApw(String apw) {
		this.apw = apw;
	}

	public String getAtype() {
		return this.atype;
	}

	public void setAtype(String atype) {
		this.atype = atype;
	}

	public String getAmessage() {
		return this.amessage;
	}

	public void setAmessage(String amessage) {
		this.amessage = amessage;
	}

	public Integer getAmoney() {
		return this.amoney;
	}

	public void setAmoney(Integer amoney) {
		this.amoney = amoney;
	}

}