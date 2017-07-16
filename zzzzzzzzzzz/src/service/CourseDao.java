package service;


import java.util.List;


import impl.Courseimpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import de.Course;

import util.HibernateUtil;

public class CourseDao implements Courseimpl {

	private Transaction ts = null;
	private String sql = "";
	private Session session = null;

	public void getSession() {
		session = HibernateUtil.getSessionFactory().openSession();
		ts = session.beginTransaction();
	}

	@Override
	public List<Course> course(String s, String h) {
		try {
			System.out.println(222);
			getSession();
			String a="all";
			System.out.println(s);
			System.out.println(h);
			if(s.equals(a)&&h.equals(a))
			{
				sql = "from  Course";  
				Query query = session.createQuery(sql);
				System.out.println(11);			
				List list = query.list();			
				return list;
			}
			else if(s.equals(a))
			{
				sql = "from   Course   where   ktype=?0";
				Query query = session.createQuery(sql);
				System.out.println(11);
				query.setParameter("0", h);
				List list = query.list();			
				return list;
			}
			else if(h.equals(a))
			{
				sql = "from   Course   where  kdirection=?0";
				Query query = session.createQuery(sql);
				query.setParameter("0", s);
				
				List list = query.list();			
				return list;
			}
			else{
				sql = "from   Course   where  kdirection=?0 and ktype=?1";
				Query query = session.createQuery(sql);
				query.setParameter("0", s);
				query.setParameter("1", h);
				List list = query.list();			
				return list;
			}
			

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

}
