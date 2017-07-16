package service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MySessionFactory;
import de.Video;
import impl.VideoDao;

public class VideoDaoImpl implements VideoDao{

	@Override
	public List<Video> QueryAllVideo() {
		// TODO Auto-generated method stub
		Transaction ts = null;
		List<Video> list = null;
		String hql = "";
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			hql = "from Video";
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
	public boolean DeleteVideo(int vid) {
		// TODO Auto-generated method stub
		System.out.println("¼à²âµã002");
		Transaction ts = null;
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			Video v = (Video) session.get(Video.class, vid);
			session.delete(v);
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
