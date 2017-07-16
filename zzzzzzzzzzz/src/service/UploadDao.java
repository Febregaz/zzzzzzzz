package service;


import java.util.List;

import impl.Uploadimpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import de.Course;
import de.Listl;
import de.Video;
import util.HibernateUtil;

public class UploadDao implements Uploadimpl{
	private Transaction ts = null;
	private String sql = "";
	private Session session = null;

	public void getSession() {
		session = HibernateUtil.getSessionFactory().openSession();
		ts = session.beginTransaction();
	}

	@Override
	public List<Course> cc(String s) {
		try {
			getSession();
		
			System.out.println(s);			
		    sql = "from   Course   where  kfounder=?0";
				Query query = session.createQuery(sql);
				query.setParameter("0", s);				
				List list = query.list();			
				return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@Override
	public List<Listl> ccc(Integer s) {
		try {
			getSession();
		System.out.println(3333);
			System.out.println(s);			
		    sql = "from   Listl  where  lcid=?0";
				Query query = session.createQuery(sql);
				query.setParameter("0", s);				
				List list = query.list();			
				return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@Override
	public void cccc(String s, Integer h, String k) {
		try {
			getSession();
		    Video video=new Video();	
		    video.setVlid(h);
		    video.setVname(k);
		    video.setVtitle(s);
		    session.save(video);
		    ts.commit();
		    
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			session.close();
		}
		
	}

	
}
