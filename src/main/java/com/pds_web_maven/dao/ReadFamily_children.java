package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_children;
import com.pds_web_maven.tools.HibernateUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Session;

public class ReadFamily_children {
//    private SessionFactory factory;
//    private Session session;
//    
//    public void createSession(){
//        this.factory = new Configuration()
//                    .configure("hibernate.cfg.xml")
//                    .addAnnotatedClass(family_children.class)
//                    .buildSessionFactory();
//        this.session = factory.getCurrentSession();
//    }
    
    HibernateUtil util = new HibernateUtil();
    Session session = util.getSession();
    
    public List<Map<String, String>> getData(){
        util.createSession(this.getClass());
        List<Map<String, String>> respondent = new ArrayList<>();
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
            util.closeSession();
        }
        return respondent;
    }
    
    public List<Map<String, String>> getChildren(int p_id){
        List<Map<String, String>> respondent = new ArrayList<>();
        util.createSession(this.getClass());
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
            util.closeSession();
        }
        return respondent;
    }
}
