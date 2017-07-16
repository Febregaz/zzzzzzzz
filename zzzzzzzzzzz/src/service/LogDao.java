package service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import de.Admin;
import util.HibernateUtil;
import impl.Logimpl;

public class LogDao implements Logimpl{
	private Transaction ts = null;
	private String sql = "";
	private Session session = null;

	public void getSession() {
		session = HibernateUtil.getSessionFactory().openSession();
		ts = session.beginTransaction();
	}

	@Override
	public boolean cc(String s, String h) {
		 try {
	            getSession();
	            sql = "select aname,apw from Admin where aname=?0 and apw=?1";
	            Query query = session.createQuery(sql);
	    		query.setParameter("0", s);
				query.setParameter("1", h);
	            List list = query.list();
	            ts.commit();
	            if (!list.isEmpty())
	                return true;
	            else
	                return false;
	        } catch (Exception ex) {
	            ex.printStackTrace();
	            return false;
	        } finally {
	            session.close();
	        }
	}
}
