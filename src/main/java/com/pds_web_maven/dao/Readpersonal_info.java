package com.pds_web_maven.dao;

import com.pds_web_maven.entities.personal_info;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class ReadPersonal_info {
    private SessionFactory factory;
    private org.hibernate.Session session;
    
    public void createSession(){
        this.factory = new Configuration()
                    .configure("hibernate.cfg.xml")
                    .addAnnotatedClass(personal_info.class)
                    .buildSessionFactory();
        
        this.session = factory.getCurrentSession();
    }

    // test
    public String readLastName() {
        createSession();
        String result = " ";
        try {
            session.beginTransaction();
            String query = "FROM personal_info WHERE p_id = :p_id";
            personal_info classObj = session.createQuery(query, personal_info.class)
                                     .setParameter("p_id", 12)
                                     .getSingleResultOrNull();
            result = classObj.getl_name();
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return result;
    }
    
    // experiment
    public void getallPIDs(){
        createSession();
        try { 
            session.beginTransaction();
//            String query = "FROM personal_info WHERE p_id = ?1";
//            personal_info classObj = session.createQuery(query, personal_info.class)
//                                     .setParameter(1, 12)
//                                     .getSingleResultOrNull();
            List<personal_info> respondents = session.createNamedQuery("personal_info.findAll", personal_info.class).getResultList(); // Error: type List does not take parameters
            
            for (personal_info p : respondents){
                System.out.println(p);
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
    }
}
