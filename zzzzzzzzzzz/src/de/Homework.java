package de;

/**
 * Homework entity. @author MyEclipse Persistence Tools
 */

public class Homework implements java.io.Serializable {

	// Fields

	private Integer hid;
	private String hfounder;
	private Integer hcid;
	private String hname;

	// Constructors

	/** default constructor */
	public Homework() {
	}

	/** minimal constructor */
	public Homework(Integer hid) {
		this.hid = hid;
	}

	/** full constructor */
	public Homework(Integer hid, String hfounder, Integer hcid, String hname) {
		this.hid = hid;
		this.hfounder = hfounder;
		this.hcid = hcid;
		this.hname = hname;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getHfounder() {
		return this.hfounder;
	}

	public void setHfounder(String hfounder) {
		this.hfounder = hfounder;
	}

	public Integer getHcid() {
		return this.hcid;
	}

	public void setHcid(Integer hcid) {
		this.hcid = hcid;
	}

	public String getHname() {
		return this.hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

}