package com.pds_web_maven.dao;

import com.pds_web_maven.entities.personal_info;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.text.DateFormat;
import java.time.LocalDate;
import java.time.Period;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;


public class ReadPersonal_info {
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
    
    public Map<String, String>[] getValues(){
        // id, name, gender, age
        // ArrayList<HashMap<String, String>> productList;
        // HashMap<String, HashMap<String, String>> allChanges; 
        Map<String, String>[] respondent = new HashMap[60];
        createSession();
        DateFormat dob;
        try {
            session.beginTransaction();
            List<personal_info> dbresult = session.createNamedQuery("personal_info.findAll", personal_info.class).getResultList();
            int i = 0;
            LocalDate currDate = LocalDate.now();
            for (personal_info p : dbresult){
                respondent[i] = new HashMap<>();
                respondent[i].put("p_id", String.valueOf(p.getp_id()));
                respondent[i].put("fullname", p.getl_name() + ", " + p.getf_name() + " " + p.getm_name());
                respondent[i].put("gender", p.getSex_id() % 2 == 0 ? "Female" : "Male"); // !Others
                respondent[i].put("age", String.valueOf(Period.between(LocalDate.parse(String.valueOf(p.getDob())), currDate).getYears()));
                ++i;
            }
            
            // DEBUGGING 
            // for (int j=0; j<60; ++j){
            //     System.out.println(respondent[j].get("age"));
            // }

            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
}
