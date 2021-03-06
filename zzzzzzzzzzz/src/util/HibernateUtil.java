package util;

import org.hibernate.*;
import org.hibernate.cfg.*;

public class HibernateUtil {
	private static SessionFactory  sessionFactory;
private static final ThreadLocal<Session> threadLocal=new ThreadLocal<Session>();
static{
	try{
		 Configuration cfg = new Configuration().configure(); 
		 System.err.println(cfg);
		 sessionFactory= cfg.buildSessionFactory();  
	}catch(Throwable ex){
		System.err.println("���ó���");
		throw new ExceptionInInitializerError(ex);
	}
}
public static SessionFactory getSessionFactory(){
	return sessionFactory;
}
public static Session getSession() throws HibernateException{
	Session session=(Session) threadLocal.get();
	if(session==null||!session.isOpen()){
		if(sessionFactory==null){
			rebuildSessionFactory();
		}
		session=(sessionFactory!=null)?sessionFactory.openSession():null;
		threadLocal.set(session);
		
	}
	return session;
}
public static void closeSession() throws HibernateException{
	Session session=(Session) threadLocal.get();
	threadLocal.set(null);
	if(session!=null){
		session.close();
	}
}
public static void rebuildSessionFactory(){
	try {
		Configuration configuration=new Configuration();
		configuration.configure();
		 sessionFactory= configuration.buildSessionFactory();  
	}catch(Exception e){
		e.printStackTrace();
	}
}
public static void shutdown(){
	getSessionFactory().close();
}
}
