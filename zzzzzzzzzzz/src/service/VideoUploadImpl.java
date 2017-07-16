package service;

import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MySessionFactory;
import de.Video;
import impl.VideoUploadDao;

public class VideoUploadImpl implements VideoUploadDao {

	@Override
	public boolean AddVideo(Video v) {
		Transaction ts = null;
		System.out.println("¼à²âµã0002");
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			ts = session.beginTransaction();
			// s.setSid("201424133106");
			System.out.println("¼à²âµã0003");
			System.out.println(v.getVname());
			session.save(v);
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

}
