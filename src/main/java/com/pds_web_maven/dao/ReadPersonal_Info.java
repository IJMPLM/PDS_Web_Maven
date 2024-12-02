package com.pds_web_maven.dao;

import com.pds_web_maven.entities.personal_info;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.time.LocalDate;
import java.time.Period;
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
    
    // test
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
    
    public Map<String, String>[] getData(){
        // ArrayList<HashMap<String, String>> productList;
        // HashMap<String, HashMap<String, String>> allChanges;
        Map<String, String>[] respondent = new HashMap[60];
        createSession();
        try {
            session.beginTransaction();
            List<personal_info> dbresult = session.createNamedQuery("personal_info.findAll", personal_info.class)
                                                  .getResultList();
            int i = 0;
            for (personal_info p : dbresult){
                respondent[i] = new HashMap<>();
                respondent[i].put("p_id", String.valueOf(p.getp_id()));
                respondent[i].put("gender", p.convertSexId(p.getSex_id()));
                respondent[i].put("civilstatus", p.convertCstatId(p.getCstat_id()));
                respondent[i].put("fullname", p.getl_name() + ", " + p.getf_name() + " " + p.getm_name());
                respondent[i].put("age", p.convertDob(p.getDob()));
                respondent[i].put("birthplace", p.getPob());
                respondent[i].put("height", String.valueOf(p.getHeight()));
                respondent[i].put("weight", String.valueOf(p.getWeight()));
                respondent[i].put("bloodtype", p.getblood_type());
                respondent[i].put("gsis_no", String.valueOf(p.getgsis_no()));
                respondent[i].put("pagibig_id", String.valueOf(p.getPagibig_id()));
                respondent[i].put("philhealth_id", String.valueOf(p.getPhilhealth_Id()));
                respondent[i].put("sss_no", String.valueOf(p.getSss_no()));
                respondent[i].put("tin", String.valueOf(p.getTin()));
                respondent[i].put("agency_empno", String.valueOf(p.getAgency_empno()));
                ++i;
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
    
    public Map<String, String>[] getData(int p_id){
        createSession();
        Map<String, String>[] respondent = new HashMap[60];
        try {
            session.beginTransaction();
            List<personal_info> dbresult = session.createNamedQuery("personal_info.findbyPID", personal_info.class)
                                                  .setParameter("p_id", p_id)
                                                  .getResultList();
            int i = 0;
            for (personal_info p : dbresult){
                respondent[i] = new HashMap<>();
                respondent[i].put("p_id", String.valueOf(p.getp_id()));
                respondent[i].put("gender", p.convertSexId(p.getSex_id()));
                respondent[i].put("civilstatus", p.convertCstatId(p.getCstat_id()));
                respondent[i].put("fullname", p.getl_name() + ", " + p.getf_name() + " " + p.getm_name());
                respondent[i].put("age", p.convertDob(p.getDob()));
                respondent[i].put("birthplace", p.getPob());
                respondent[i].put("height", String.valueOf(p.getHeight()));
                respondent[i].put("weight", String.valueOf(p.getWeight()));
                respondent[i].put("bloodtype", p.getblood_type());
                respondent[i].put("gsis_no", String.valueOf(p.getgsis_no()));
                respondent[i].put("pagibig_id", String.valueOf(p.getPagibig_id()));
                respondent[i].put("philhealth_id", String.valueOf(p.getPhilhealth_Id()));
                respondent[i].put("sss_no", String.valueOf(p.getSss_no()));
                respondent[i].put("tin", String.valueOf(p.getTin()));
                respondent[i].put("agency_empno", String.valueOf(p.getAgency_empno()));
                ++i;
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
}
