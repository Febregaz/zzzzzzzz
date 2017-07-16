package de;

/**
 * Option entity. @author MyEclipse Persistence Tools
 */

public class Option implements java.io.Serializable {

	// Fields

	private Integer oid;
	private Integer ohid;
	private String otitle;
	private String oreal;
	private String oa;
	private String ob;
	private String oc;
	private String od;
	private String oname;
	// Constructors

	/** default constructor */
	public Option() {
	}

	/** full constructor */
	

	// Property accessors

	public Integer getOid() {
		return this.oid;
	}


	public Option(Integer ohid, String otitle, String oreal, String oa,
			String ob, String oc, String od, String oname) {
	
		this.ohid = ohid;
		this.otitle = otitle;
		this.oreal = oreal;
		this.oa = oa;
		this.ob = ob;
		this.oc = oc;
		this.od = od;
		this.oname = oname;
	}

	public String getOname() {
		return oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getOa() {
		return oa;
	}

	public void setOa(String oa) {
		this.oa = oa;
	}

	public String getOb() {
		return ob;
	}

	public void setOb(String ob) {
		this.ob = ob;
	}

	public String getOc() {
		return oc;
	}

	public void setOc(String oc) {
		this.oc = oc;
	}

	public String getOd() {
		return od;
	}

	public void setOd(String od) {
		this.od = od;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	public Integer getOhid() {
		return this.ohid;
	}

	public void setOhid(Integer ohid) {
		this.ohid = ohid;
	}

	public String getOtitle() {
		return this.otitle;
	}

	public void setOtitle(String otitle) {
		this.otitle = otitle;
	}

	public String getOreal() {
		return this.oreal;
	}

	public void setOreal(String oreal) {
		this.oreal = oreal;
	}

}