package service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MySessionFactory;
import de.Comment;
import impl.CommentDao;

public class CommentDaoImpl implements CommentDao {

	@Override
	public List<Comment> QueryAllComment() {
		// TODO Auto-generated method stub
		Transaction ts = null;
		List<Comment> list = null;
		String hql = "";
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			hql = "from Comment";
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
	public boolean AddComment(Comment c) {
		// TODO Auto-generated method stub
		Transaction ts = null;
		System.out.println("¼à²âµã0002");
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			// s.setSid("201424133106");
			System.out.println("¼à²âµã0003");
			System.out.println(c.getMfounder());
			System.out.println(c.getMmessage());
			session.save(c);
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
	public boolean DeleteComment(int mid) {
		// TODO Auto-generated method stub
		System.out.println("¼à²âµã002");
		Transaction ts = null;
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			Comment c = (Comment) session.get(Comment.class, mid);
			session.delete(c);
			ts.commit();
			System.out.println("¼ì²âµã02");
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

}
