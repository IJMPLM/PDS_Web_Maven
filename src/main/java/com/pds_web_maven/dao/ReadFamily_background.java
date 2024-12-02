package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_background;
import com.pds_web_maven.entities.personal_info;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
    
    public List<Map<String, String>> getData(){
        List<Map<String, String>> respondent = new ArrayList<>();
        createSession();
        try {
            session.beginTransaction();
            List<family_background> dbresult = session.createNamedQuery("family_background.findAll", family_background.class).getResultList();
            for (family_background f : dbresult){ 
                Map<String, String> data = new HashMap<>();
                data.put("fam_bg_id", String.valueOf(f.getFamBgId()));
                data.put("p_id", String.valueOf(f.getP_id()));
                data.put("spouse_fullname", f.getSpouseLname() + ", " + f.getSpouseFname() + " " + f.getSpouseMname()); // has NULL VALUES
                data.put("spouse_occupation", f.getSpouseOccupation());
                data.put("spouse_employer", f.getSpouseEmployer());
                data.put("spouse_emp_address", f.getSpouseEmpAddress());
                data.put("father_fullname", f.getFatherLname() + ", " + f.getFatherFname() + " " + f.getFatherMname());
                data.put("mother_fullname", f.getMotherMnLname() + ", " + f.getMotherMnFname() + " " + f.getMotherMnMname());
                respondent.add(data);
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
    
}


