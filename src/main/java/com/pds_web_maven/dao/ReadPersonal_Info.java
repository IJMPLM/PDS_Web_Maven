package com.pds_web_maven.dao;

import com.pds_web_maven.entities.personal_info;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class ReadPersonal_Info {
    private SessionFactory factory;
    private Session session;
    public void createSession(){
        this.factory = new Configuration()
                    .configure("hibernate.cfg.xml")
                    .addAnnotatedClass(personal_info.class)
                    .buildSessionFactory();
        this.session = factory.getCurrentSession();
    }
    
    public List<Map<String, String>> getData(){
        List<Map<String, String>> respondent = new ArrayList<>();
        createSession();
        try {
            session.beginTransaction();
            List<personal_info> dbresult = session.createNamedQuery("personal_info.findAll", personal_info.class)
                                                  .getResultList();
            for (personal_info p : dbresult){
                Map<String, String> data = new HashMap<>();
                data.put("p_id", String.valueOf(p.getp_id()));
                data.put("gender", p.convertSexId(p.getSex_id()));
                data.put("civilstatus", p.convertCstatId(p.getCstat_id()));
                data.put("fullname", p.getl_name() + ", " + p.getf_name() + " " + p.getm_name());
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
    
    public List<Map<String, String>> getData(int p_id){
        createSession();
        List<Map<String, String>> respondent = new ArrayList<>();
        try {
            session.beginTransaction();
            List<personal_info> dbresult = session.createNamedQuery("personal_info.findbyPID", personal_info.class)
                                                  .setParameter("p_id", p_id)
                                                  .getResultList();
            for (personal_info p : dbresult){
                Map<String, String> data = new HashMap<>();
                data.put("p_id", String.valueOf(p.getp_id()));
                data.put("gender", p.convertSexId(p.getSex_id()));
                data.put("civilstatus", p.convertCstatId(p.getCstat_id()));
                data.put("fullname", p.getl_name() + ", " + p.getf_name() + " " + p.getm_name());
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
}
