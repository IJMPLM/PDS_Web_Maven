package com.pds_web_maven.dao;

import com.pds_web_maven.entities.contact_info;
import com.pds_web_maven.entities.family_background;
import com.pds_web_maven.entities.family_children;
import com.pds_web_maven.entities.personal_info;
import com.pds_web_maven.tools.HibernateUtil;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class Personal_infoDAO {
    private HibernateUtil util;
    private SessionFactory factory;
    private Session session;
    
    private int p_id;
    
    public int getP_id() {
        return p_id;
    }

    public String getP_idtoString() {
        return String.valueOf(p_id);
    }
    
    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = Integer.parseInt(p_id);
    }
    
    public void setSession() {
        util = new HibernateUtil();
        factory = util.createFactory(this.getClass());
        session = util.createSession();
    }
    
    public List<Map<String, String>> getData(){
        List<Map<String, String>> respondent = new ArrayList<>();
        setSession();
        try {
            session.beginTransaction();
            List<personal_info> dbresult = session.createNamedQuery("personal_info.findAll", personal_info.class)
                                                  .getResultList();
            for (personal_info p : dbresult){
                Map<String, String> data = new HashMap<>();
                data.put("p_id", String.valueOf(p.getp_id()));
                data.put("gender", p.convertSexId(p.getSex_id()));
                data.put("sex", Integer.toString(p.getSex_id()));
                data.put("civilstatus", p.convertCstatId(p.getCstat_id()));
                data.put("civilstatus_id", Integer.toString(p.getCstat_id()));
                data.put("fullname", 
                    (p.getl_name() != null ? p.getl_name(): "") + 
                    (p.getf_name() != null ? (p.getl_name() != null ? ", " : "") + p.getf_name() : "") + 
                    (p.getm_name() != null ? " " + p.getm_name() : "") + 
                    (p.getExt_name() != null ? " " + p.getExt_name() : "")
                );
                data.put("cit_id", Integer.toString(p.getCit_id()));
                data.put("cit_acq_id", Integer.toString(p.getCit_acq_id()));
                data.put("extname", p.getExt_name());
                data.put("age", p.convertDob(p.getDob()));
                data.put("birthplace", p.getPob());
                data.put("height", String.valueOf(p.getHeight()));
                data.put("weight", String.valueOf(p.getWeight()));
                data.put("bloodtype", p.getblood_type());
                data.put("gsis_no", String.valueOf(p.getgsis_no()));
                data.put("pagibig_id", String.valueOf(p.getPagibig_id()));
                data.put("philhealth_id", String.valueOf(p.getPhilhealth_Id()));
                data.put("sss_no", String.valueOf(p.getSss_no()));
                data.put("tin", String.valueOf(p.getTin()));
                data.put("agency_empno", String.valueOf(p.getAgency_empno()));
                respondent.add(data);
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
    
    public Map<String, String> getData(int p_id) {
        setSession();
        Map<String, String> respondent = new HashMap<>();
        try {
            session.beginTransaction();
            List<personal_info> dbresult = session.createNamedQuery("personal_info.findbyPID", personal_info.class)
                                                  .setParameter("p_id", p_id)
                                                  .getResultList();
            if (!dbresult.isEmpty()) {
                personal_info p = dbresult.get(0); // Assuming you want to return the first result
                respondent.put("p_id", String.valueOf(p.getp_id()));
                respondent.put("gender", p.convertSexId(p.getSex_id()));
                respondent.put("sex", Integer.toString(p.getSex_id()));
                respondent.put("civilstatus", p.convertCstatId(p.getCstat_id()));
                respondent.put("civilstatus_id", Integer.toString(p.getCstat_id()));
                respondent.put("fullname", 
                    (p.getl_name() != null ? p.getl_name(): "") + 
                    (p.getf_name() != null ? (p.getl_name() != null ? ", " : "") + p.getf_name() : "") + 
                    (p.getm_name() != null ? " " + p.getm_name() : "") + 
                    (p.getExt_name() != null ? " " + p.getExt_name() : "")
                );
                respondent.put("cit_id", Integer.toString(p.getCit_id()));
                respondent.put("cit_acq_id", Integer.toString(p.getCit_acq_id()));
                respondent.put("lname", p.getl_name());
                respondent.put("fname", p.getf_name());
                respondent.put("mname", p.getm_name()); 
                respondent.put("extname", p.getExt_name());
                respondent.put("age", p.convertDob(p.getDob()));
                respondent.put("birthdate", String.valueOf(p.getDob()));
                respondent.put("birthplace", p.getPob());
                respondent.put("height", String.valueOf(p.getHeight()));
                respondent.put("weight", String.valueOf(p.getWeight()));
                respondent.put("bloodtype", p.getblood_type());
                respondent.put("gsis_no", String.valueOf(p.getgsis_no()));
                respondent.put("pagibig_id", String.valueOf(p.getPagibig_id()));
                respondent.put("philhealth_id", String.valueOf(p.getPhilhealth_Id()));
                respondent.put("sss_no", String.valueOf(p.getSss_no()));
                respondent.put("tin", String.valueOf(p.getTin()));
                respondent.put("agency_empno", String.valueOf(p.getAgency_empno()));
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
    
    public personal_info addData(personal_info User){
        setSession();
        personal_info pid;
        try {
            session.beginTransaction();
            session.save(User);
            
            personal_info data = session.get(personal_info.class, User.getp_id());
            pid = new personal_info(data.getp_id());
            
            session.getTransaction().commit();
            System.out.println("Data Insertion Complete.");
        } finally {
            factory.close();
        }
        return pid;
    }
    
    public void updateData(Session session, personal_info User){
        try {
            personal_info data = session.get(personal_info.class, User.getp_id());
            if (data != null){
               data.setSex_id(User.getSex_id());
               data.setCstat_id(User.getCstat_id());
               data.setCit_id(User.getCit_id());
               data.setCit_acq_id(User.getCit_acq_id());
               data.setl_name(User.getl_name());
               data.setf_name(User.getf_name());
               data.setm_name(User.getm_name());
               data.setExt_name(User.getExt_name());
               data.setDob(User.getDob());
               data.setPob(User.getPob());
               data.setHeight(User.getHeight());
               data.setWeight(User.getWeight());
               data.setblood_type(User.getblood_type());
               data.setgsis_no(User.getgsis_no());
               data.setPagibig_id(User.getPagibig_id());
               data.setPhilhealth_Id(User.getPhilhealth_Id());
               data.setSss_no(User.getSss_no());
               data.setTin(User.getTin());
               data.setAgency_empno(User.getAgency_empno());
               System.out.println("Personal Data Updated.");
            }
        } catch (Exception e) {
            System.out.println("ERROR: user not found or an error occurred.");
            e.printStackTrace();
        }
    }
    
    // with contact info
    public void updatePersonalInfo(personal_info UserPI, contact_info UserCI){
        factory = new Configuration().configure("hibernate.cfg.xml")
                                  .addAnnotatedClass(this.getClass())
                                  .addAnnotatedClass(contact_info.class)
                                  .buildSessionFactory();
        session = factory.getCurrentSession();
        Contact_infoDAO clCI = new Contact_infoDAO();
        try {
            session.beginTransaction();
            updateData(session, UserPI);
            clCI.updateContactInfo(session, UserCI);
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
    }
    
    public void deleteData(Session session, int p_id){
        try {
            personal_info data = session.get(personal_info.class, p_id);
            if (data != null){
                session.delete(data);
                session.flush();
                session.clear();
                System.out.println("User FOUND.");
            } else 
                System.out.println("User NOT FOUND");
        } catch (Exception e)  {
            System.out.println("User does not exist");
        }
    }
    
    public void deleteEverything(int p_id){
        factory = new Configuration().configure("hibernate.cfg.xml")
                                  .addAnnotatedClass(family_children.class)
                                  .addAnnotatedClass(family_background.class)
                                  .addAnnotatedClass(contact_info.class)
                                  .addAnnotatedClass(this.getClass())
                                  .buildSessionFactory();
        session = factory.getCurrentSession();
        Family_childrenDAO clFC = new Family_childrenDAO();
        Family_backgroundDAO clFB = new Family_backgroundDAO();
        Contact_infoDAO clCI = new Contact_infoDAO();
        try {
            session.beginTransaction();
            clFC.deleteChildrenCascade(session, p_id);
            clFB.deleteCascadeFamBg(session, p_id);
            clCI.deleteContactCascade(session, p_id);
            deleteData(session, p_id);
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
    }
}
