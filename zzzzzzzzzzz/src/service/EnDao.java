package service;

import java.util.List;







import impl.Enimpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;






import de.Course;
import de.Listl;
import de.Option;
import de.Video;
import util.HibernateUtil;

public class EnDao implements Enimpl {

	private Transaction ts = null;
	private String sql = "";
	private Session session = null;

	public void getSession() {
		session = HibernateUtil.getSessionFactory().openSession();
		ts = session.beginTransaction();
	}

	@Override
	public List<Listl> li(Integer s) {
		try {
			getSession();
			String a="all";
			System.out.println(s);			
		    sql = "from   Listl   where  lcid=?0";
				Query query = session.createQuery(sql);
				query.setParameter("0", s);				
				List list = query.list();     /*查出课程视频章节*/			
				return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@Override
	public List<Course> cc(Integer s) {
		try {
			getSession();
			String a="all";
			System.out.println(s);			
		    sql = "from  Course   where  cid=?0";
				Query query = session.createQuery(sql);   /*查出课程视频名称*/
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
	public List<Video> vv() {
		try {
			getSession();
			String a="all";
						
		    sql = "from  Video  ";
				Query query = session.createQuery(sql);
							
				List list = query.list();			/*查出章节里的小章节视频*/
				return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@Override
	public List<Option> oo() {
		try {
			getSession();
			String a="all";
						
		    sql = "from  Option  ";
				Query query = session.createQuery(sql);
							
				List list = query.list();			
				return list;            /*查出练习题*/
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	

}
