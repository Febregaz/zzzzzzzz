package de;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable {

	// Fields

	private Integer cid;
	private Integer kprice;
	private String kfounder;
	private String ktitle;
	private String kdirection;
	private String ktype;
	private String kmessage;

	// Constructors

	/** default constructor */
	public Course() {
	}

	/** full constructor */
	public Course(Integer kprice, String kfounder, String ktitle,
			String kdirection, String ktype, String kmessage) {
		this.kprice = kprice;
		this.kfounder = kfounder;
		this.ktitle = ktitle;
		this.kdirection = kdirection;
		this.ktype = ktype;
		this.kmessage = kmessage;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getKprice() {
		return this.kprice;
	}

	public void setKprice(Integer kprice) {
		this.kprice = kprice;
	}

	public String getKfounder() {
		return this.kfounder;
	}

	public void setKfounder(String kfounder) {
		this.kfounder = kfounder;
	}

	public String getKtitle() {
		return this.ktitle;
	}

	public void setKtitle(String ktitle) {
		this.ktitle = ktitle;
	}

	public String getKdirection() {
		return this.kdirection;
	}

	public void setKdirection(String kdirection) {
		this.kdirection = kdirection;
	}

	public String getKtype() {
		return this.ktype;
	}

	public void setKtype(String ktype) {
		this.ktype = ktype;
	}

	public String getKmessage() {
		return this.kmessage;
	}

	public void setKmessage(String kmessage) {
		this.kmessage = kmessage;
	}

}