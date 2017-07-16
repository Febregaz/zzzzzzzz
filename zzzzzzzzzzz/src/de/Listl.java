package de;

/**
 * Listl entity. @author MyEclipse Persistence Tools
 */

public class Listl implements java.io.Serializable {

	// Fields

	private Integer lid;
	private Integer lcid;
	private String lmessage;

	// Constructors

	/** default constructor */
	public Listl() {
	}

	/** full constructor */
	public Listl(Integer lcid, String lmessage) {
		this.lcid = lcid;
		this.lmessage = lmessage;
	}

	// Property accessors

	public Integer getLid() {
		return this.lid;
	}

	public void setLid(Integer lid) {
		this.lid = lid;
	}

	public Integer getLcid() {
		return this.lcid;
	}

	public void setLcid(Integer lcid) {
		this.lcid = lcid;
	}

	public String getLmessage() {
		return this.lmessage;
	}

	public void setLmessage(String lmessage) {
		this.lmessage = lmessage;
	}

}