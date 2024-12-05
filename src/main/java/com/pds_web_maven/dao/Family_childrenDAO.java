package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_children;
import com.pds_web_maven.tools.HibernateUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class Family_childrenDAO {
    private HibernateUtil util;
    private SessionFactory factory;
    private Session session;
    
    public void setSession() {
        util = new HibernateUtil();
        factory = util.createFactory(this.getClass());
        session = util.createSession();
    }
    
    public List<Map<String, String>> getData(){
        setSession();
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
        setSession();
        List<Map<String, String>> respondent = new ArrayList<>();
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
    
    public void addData(family_children User){
        setSession();
        try {
            session.beginTransaction();
            session.save(User);
            session.getTransaction().commit();
            System.out.println("Data Insertion Complete.");
        } finally {
            factory.close();
        }
    }
    
    public void updateData(int fam_ch_id, family_children User){
        setSession();
        try {
            session.beginTransaction();
            family_children data = session.get(family_children.class, fam_ch_id);
            if (User != null){
                data.setP_id(User.getP_id());
                data.setChildFullname(User.getChildFullname());
                data.setChildDob(User.getChildDob());
            }
            session.getTransaction().commit();
            System.out.println("Data Updated.");
        } finally {
            factory.close();
        }
    }

    public void updateData(String fam_ch_id, family_children User){
        setSession();
        try {
            session.beginTransaction();
            family_children data = session.get(family_children.class, Integer.parseInt(fam_ch_id));
            if (User != null){
                data.setP_id(User.getP_id());
                data.setChildFullname(User.getChildFullname());
                data.setChildDob(User.getChildDob());
            }
            session.getTransaction().commit();
            System.out.println("Data Updated.");
        } finally {
            factory.close();
        }
    }
}
