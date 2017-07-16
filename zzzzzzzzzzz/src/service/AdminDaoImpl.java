package service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MySessionFactory;
import de.Admin;
import impl.AdminDao;

public class AdminDaoImpl implements AdminDao {

	@Override
	public List<Admin> QueryAllAdmin() {
		// TODO Auto-generated method stub
		Transaction ts = null;
		List<Admin> list = null;
		String hql = "";
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			hql = "from Admin";
			Query query = session.createQuery(hql);
			list = query.list();
			ts.commit();
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			ts.commit();
			return list;
		} finally {
			if (ts != null) {
				ts = null;
			}
		}
	}

	@Override
	public boolean DeleteAdmin(String aname) {
		// TODO Auto-generated method stub
		System.out.println("¼à²âµã002");
		Transaction ts = null;
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			Admin a = (Admin) session.get(Admin.class, aname);
			session.delete(a);
			ts.commit();
			// System.out.println("¼ì²âµã02");
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			ts.commit();
			return false;
		} finally {
			if (ts != null) {
				ts = null;
			}
		}
	}

	@Override
	public boolean ModifyAdmin(Admin a) {
		System.out.println("¼à²âµã-1");
		System.out.println(a.getAname());
		System.out.println(a.getApw());
		System.out.println(a.getAtype());
		System.out.println(a.getAmessage());
		System.out.println(a.getAmoney());
		Transaction ts = null;
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			session.update(a);
			ts.commit();
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			ts.commit();
			return false;
		} finally {
			if (ts != null) {
				ts = null;
			}
		}
	}

	@Override
	public boolean AddAdmin(Admin a) {
		// TODO Auto-generated method stub
		Transaction ts = null;
		System.out.println("¼à²âµã0002");
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			// s.setSid("201424133106");
			System.out.println("¼à²âµã0003");
			System.out.println(a.getAname());
			session.save(a);
			System.out.println("¼à²âµã0004");
			ts.commit();
			// System.out.println("¼ì²âµã02");
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			ts.commit();
			return false;
		} finally {
			if (ts != null) {
				ts = null;
			}
		}
	}

	@Override
	public Admin FindByName(String aname) {
		Transaction ts = null;
		String hql = "";
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			Admin a = (Admin) session.get(Admin.class, aname);
			ts.commit();
			return a;
		} catch (Exception ex) {
			ex.printStackTrace();
			ts.commit();
			return null;
		} finally {
			if (ts != null) {
				ts = null;
			}
		}
	}

}
