package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_background;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ReadFamily_background {
    private SessionFactory factory;    
    private Session session;    
    
    public void createSession(){
        this.factory = new Configuration()
                    .configure("hibernate.cfg.xml")
                    .addAnnotatedClass(family_background.class)
                    .buildSessionFactory();
        
        this.session = factory.getCurrentSession();
    }
    
    
}


