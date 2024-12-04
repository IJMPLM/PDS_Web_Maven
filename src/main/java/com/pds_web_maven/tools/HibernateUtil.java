package com.pds_web_maven.tools;

import com.pds_web_maven.entities.personal_info;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    
    SessionFactory factory;
    private Session session;
    
    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }
    
    public void createSession(Class clFile){
        this.factory = new Configuration().configure("hibernate.cfg.xml")
                                                              .addAnnotatedClass(clFile)
                                                              .buildSessionFactory();
        this.session = factory.getCurrentSession();
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
