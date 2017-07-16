package de;

/**
 * Select entity. @author MyEclipse Persistence Tools
 */

public class Selectt implements java.io.Serializable {

	// Fields

	private Integer sid;
	private String said;
	private Integer scid;
	private String banji;

	// Constructors

	public String getBanji() {
		return banji;
	}

	public void setBanji(String banji) {
		this.banji = banji;
	}

	/** default constructor */
	public Selectt() {
	}

	/** full constructor */
	public Selectt(String said, Integer scid) {
		this.said = said;
		this.scid = scid;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getSaid() {
		return this.said;
	}

	public void setSaid(String said) {
		this.said = said;
	}

	public Integer getScid() {
		return this.scid;
	}

	public void setScid(Integer scid) {
		this.scid = scid;
	}

}