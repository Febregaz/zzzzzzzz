package impl;

import java.util.List;

import de.Admin;

public interface AdminDao {
	public List<Admin> QueryAllAdmin();
	public Admin FindByName(String aname);
	public boolean DeleteAdmin(String aname);
	public boolean ModifyAdmin(Admin a);
	public boolean AddAdmin(Admin a);
}
