package de;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer mid;
	private Integer mvid;
	private String mfounder;
	private String mmessage;
	private String mreceiver;
	private Integer mmid;

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** minimal constructor */
	public Comment(Integer mid) {
		this.mid = mid;
	}

	/** full constructor */
	public Comment(Integer mid, Integer mvid, String mfounder, String mmessage,
			String mreceiver, Integer mmid) {
		this.mid = mid;
		this.mvid = mvid;
		this.mfounder = mfounder;
		this.mmessage = mmessage;
		this.mreceiver = mreceiver;
		this.mmid = mmid;
	}

	// Property accessors

	public Integer getMid() {
		return this.mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public Integer getMvid() {
		return this.mvid;
	}

	public void setMvid(Integer mvid) {
		this.mvid = mvid;
	}

	public String getMfounder() {
		return this.mfounder;
	}

	public void setMfounder(String mfounder) {
		this.mfounder = mfounder;
	}

	public String getMmessage() {
		return this.mmessage;
	}

	public void setMmessage(String mmessage) {
		this.mmessage = mmessage;
	}

	public String getMreceiver() {
		return this.mreceiver;
	}

	public void setMreceiver(String mreceiver) {
		this.mreceiver = mreceiver;
	}

	public Integer getMmid() {
		return this.mmid;
	}

	public void setMmid(Integer mmid) {
		this.mmid = mmid;
	}

}