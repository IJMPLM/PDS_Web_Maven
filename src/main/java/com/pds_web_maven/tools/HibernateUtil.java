package com.pds_web_maven.tools;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    
    private SessionFactory factory;
    private Session session;
    
    public HibernateUtil(){
        
    }
    
    public SessionFactory getFactory(){
        return factory;
    }
    
    public Session getSession(){
        return session;
    }
    
    public SessionFactory createFactory(Class clFile) {
        this.factory = new Configuration().configure("hibernate.cfg.xml")
                                          .addAnnotatedClass(clFile)
                                          .buildSessionFactory();
        return factory;
    }
    
    public Session createSession(){
        this.session = factory.getCurrentSession();
        return session;
    }
    
    public void closeSession(){
        this.factory.close();
    }
    // -- experiments --
    public Class[] readClass(){
        Class[] a = new Class[12];
        return a;
    }
    
    public void getClassName(){
        System.out.println("Classname: " + this.getClass());
    }    
}
