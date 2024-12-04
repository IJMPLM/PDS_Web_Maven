package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_children;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ReadFamily_children {
    private SessionFactory factory;
    private Session session;
    
    public void createSession(){
        this.factory = new Configuration()
                    .configure("hibernate.cfg.xml")
                    .addAnnotatedClass(family_children.class)
                    .buildSessionFactory();
        this.session = factory.getCurrentSession();
    }
    
    public List<Map<String, String>> getData(){
        List<Map<String, String>> respondent = new ArrayList<>();
        createSession();
        try {
            session.beginTransaction();
            List<family_children> dbresult = session.createNamedQuery("family_children.findAll", family_children.class).getResultList();
            for (family_children f : dbresult){ 
                Map<String, String> data = new HashMap<>();
                data.put("fam_bg_id", f.convertFam_ch_id(String.valueOf(f.getFamChId())));
                data.put("p_id", f.convertPid(String.valueOf(f.getP_id())));
                data.put("child_fullname", f.convertChild_fn(f.getChildFullname()));
                data.put("child_dob", f.convertChild_dob(String.valueOf(f.getChildDob())));
                respondent.add(data);
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
    
    public List<Map<String, String>> getChildren(int p_id){
        List<Map<String, String>> respondent = new ArrayList<>();
        createSession();
        try {
            session.beginTransaction();
            List<family_children> dbresult = session.createNamedQuery("family_children.findByPID", family_children.class)
                                                  .setParameter("p_id", p_id)
                                                  .getResultList();
            for (family_children f : dbresult){ 
                Map<String, String> data = new HashMap<>();
                data.put("p_id", f.convertPid(String.valueOf(f.getP_id())));
                data.put("child_fullname", f.convertChild_fn(f.getChildFullname()));
                data.put("child_dob", f.convertChild_dob(String.valueOf(f.getChildDob())));
                respondent.add(data);
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
}
