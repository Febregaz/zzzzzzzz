package service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateUtil;
import de.Admin;
import de.Course;
import de.Selectt;
import de.Tribune;
import impl.Allinimpl;

public class AllinDao implements Allinimpl{
	private Transaction ts = null;
	private String sql = "";
	private Session session = null;

	public void getSession() {
		session = HibernateUtil.getSessionFactory().openSession();
		ts = session.beginTransaction();
	}

	
	public List<Tribune> tri() {
		try {
			
			   getSession();		
				sql = "from  Tribune";  
				Query query = session.createQuery(sql);
				System.out.println(11);			
				List list = query.list();			
				return list;
			
	}catch (Exception ex) {
		ex.printStackTrace();
		return null;
	} finally {
		session.close();
	}
		
	}

	@Override
	public void addt(String b, String c, String d) {
		try {
			getSession();
			Tribune opp=new Tribune();
		    
		    opp.setTfounder(b);
		    opp.setTtitle(c);
		    opp.setTmessage(d);
		   
		
		    session.save(opp);
		    ts.commit();
		    
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			session.close();
		}
		
	}


	@Override
	public List<Course> cour(String name) {
		try {
			System.out.println(222);
			getSession();			
			 String hql="from  Course where ktitle like '%"+name+"%'";
			 Query q = session.createQuery(hql);
			 return q.list();	
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}


	@Override
	public boolean zhuce(String a, String b) {
		try {
			
			   getSession();		
			   sql = "from   Admin   where   aname=?0";
				Query query = session.createQuery(sql);
				System.out.println(11);
				query.setParameter("0", a);
				List list = query.list();	
				if(null == list || list.size() ==0 )
				{
					System.out.println("jinle");
					Admin op=new Admin();				    
				    op.setAname(a);
				    op.setApw(b);
				    op.setAtype("1");
				    session.save(op);
				    ts.commit();
					return true;
				}
				
				else
				{
					
					
					return false;
				}
			
	}catch (Exception ex) {
		ex.printStackTrace();
		return false;
	} finally {
		session.close();
	}
	}


	@Override
	public boolean yanzheng(String a, Integer b) {
		 try {
			 System.out.println(a);
			 System.out.println(b);
	            getSession();
	            sql = "from Selectt where said=?0 and scid=?1";
	            Query query = session.createQuery(sql);
	    		query.setParameter("0", a);
				query.setParameter("1", b);
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


	@Override
	public boolean buy(String a, Integer b) {
		try {
			
			   getSession();		
			   sql = "from Selectt where said=?0 and scid=?1";
				Query query = session.createQuery(sql);
				System.out.println(11);
				
				query.setParameter("0", a);
				query.setParameter("1", b);
				List list = query.list();	
				if(null == list || list.size() ==0 )
				{
					System.out.println("jinle");
					Selectt op=new Selectt();				    
				    op.setSaid(a);
				    op.setScid(b);				   
				    session.save(op);
				    ts.commit();
					return true;
				}
				
				else
				{
					
					
					return false;
				}
			
	}catch (Exception ex) {
		ex.printStackTrace();
		return false;
	} finally {
		session.close();
	}
	}
}
