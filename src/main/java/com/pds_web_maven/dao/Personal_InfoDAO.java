package com.pds_web_maven.dao;

import com.pds_web_maven.entities.personal_info;
import com.pds_web_maven.tools.HibernateUtil;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Date;
import org.hibernate.SessionFactory;
import org.hibernate.Session;

public class Personal_InfoDAO {
    private HibernateUtil util;
    private SessionFactory factory;
    private Session session;
    
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
                respondent.put("civilstatus", p.convertCstatId(p.getCstat_id()));
                respondent.put("fullname", p.getl_name() + ", " + p.getf_name() + " " + p.getm_name());
                respondent.put("age", p.convertDob(p.getDob()));
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
    
    public void addData(personal_info User){
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
}
