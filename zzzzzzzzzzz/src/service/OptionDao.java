package service;

import org.hibernate.Session;
import org.hibernate.Transaction;

import de.Option;

import util.HibernateUtil;
import impl.Optionimpl;



public class OptionDao implements Optionimpl {
	private Transaction ts = null;
	private String sql = "";
	private Session session = null;

	public void getSession() {
		session = HibernateUtil.getSessionFactory().openSession();
		ts = session.beginTransaction();
	}

	@Override
	public void cccc(Integer a, String b, String c, String d, String e,
			String f, String g,String h) {
		try {
			getSession();
			Option opp=new Option();
		    opp.setOhid(a);
		    opp.setOname(b);
		    opp.setOreal(c);
		    opp.setOa(d);
		    opp.setOb(e);
		    opp.setOc(f);
		    opp.setOd(g);
		    opp.setOtitle(h);
		    session.save(opp);
		    ts.commit();
		    
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			session.close();
		}
		
	}
}
