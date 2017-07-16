package de;

/**
 * Remain entity. @author MyEclipse Persistence Tools
 */

public class Remain implements java.io.Serializable {

	// Fields

	private Integer rid;
	private Integer roid;
	private String rfounder;
	private String rmessage;

	// Constructors

	/** default constructor */
	public Remain() {
	}

	/** full constructor */
	public Remain(Integer roid, String rfounder, String rmessage) {
		this.roid = roid;
		this.rfounder = rfounder;
		this.rmessage = rmessage;
	}

	// Property accessors

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public Integer getRoid() {
		return this.roid;
	}

	public void setRoid(Integer roid) {
		this.roid = roid;
	}

	public String getRfounder() {
		return this.rfounder;
	}

	public void setRfounder(String rfounder) {
		this.rfounder = rfounder;
	}

	public String getRmessage() {
		return this.rmessage;
	}

	public void setRmessage(String rmessage) {
		this.rmessage = rmessage;
	}

}