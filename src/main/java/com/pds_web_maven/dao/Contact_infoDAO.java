package com.pds_web_maven.dao;

import com.pds_web_maven.entities.contact_info;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Contact_infoDAO {
    private SessionFactory factory;
    private Session session;
    
    public void createSession(){
        this.factory = new Configuration()
                    .configure("hibernate.cfg.xml")
                    .addAnnotatedClass(contact_info.class)
                    .buildSessionFactory();
        this.session = factory.getCurrentSession();
    }
    
    public List<Map<String, String>> getData(){
        List<Map<String, String>> respondent = new ArrayList<>();
        createSession();
        try {
            session.beginTransaction();
            List<contact_info> dbresult = session.createNamedQuery("contact_info.findAll", contact_info.class).getResultList();
            for (contact_info c : dbresult){ 
                Map<String, String> data = new HashMap<>();
                data.put("contact_id", String.valueOf(c.getContactId()));
                data.put("p_id", String.valueOf(c.getP_id()));
                data.put("res_house_no", c.getResHouseNo());
                data.put("res_house_street", c.getResHouseStreet());
                data.put("res_village", c.getResVillage());
                data.put("res_bgy", c.getResBgy());
                data.put("res_citymun", c.getResCitymun());
                data.put("res_prov", c.getResProv());
                data.put("res_zipcode", c.getResZipcode());
                data.put("perm_house_no", c.getPermHouseNo());
                data.put("perm_house_street", c.getPermHouseStreet());
                data.put("perm_village", c.getPermVillage());
                data.put("perm_bgy", c.getPermBgy());
                data.put("perm_citymun", c.getPermCitymun());
                data.put("perm_prov", c.getPermProv());
                data.put("perm_zipcode", c.getPermZipcode());
                data.put("tel_no", c.getTelNo());
                data.put("mobile_no", c.getMobileNo());
                data.put("email_addr", c.getEmailAddress());
                respondent.add(data);
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
    }
    
    public Map<String, String> getData(int p_id) {
        createSession();
        Map<String, String> respondent = new HashMap<>();
        try {
            session.beginTransaction();
            List<contact_info> dbresult = session.createNamedQuery("contact_info.findByPID", contact_info.class)
                                                  .setParameter("p_id", p_id)
                                                  .getResultList();
            if (!dbresult.isEmpty()) {
                contact_info c = dbresult.get(0); 
                respondent.put("contact_id", String.valueOf(c.getContactId()));
                respondent.put("p_id", String.valueOf(c.getP_id()));
                respondent.put("res_house_no", c.getResHouseNo());
                respondent.put("res_house_street", c.getResHouseStreet());
                respondent.put("res_village", c.getResVillage());
                respondent.put("res_bgy", c.getResBgy());
                respondent.put("res_citymun", c.getResCitymun());
                respondent.put("res_prov", c.getResProv());
                respondent.put("res_zipcode", c.getResZipcode());
                respondent.put("perm_house_no", c.getPermHouseNo());
                respondent.put("perm_house_street", c.getPermHouseStreet());
                respondent.put("perm_village", c.getPermVillage());
                respondent.put("perm_bgy", c.getPermBgy());
                respondent.put("perm_citymun", c.getPermCitymun());
                respondent.put("perm_prov", c.getPermProv());
                respondent.put("perm_zipcode", c.getPermZipcode());
                respondent.put("tel_no", c.getTelNo());
                respondent.put("mobile_no", c.getMobileNo());
                respondent.put("email_addr", c.getEmailAddress());
            }
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
        return respondent;
        }
    
    public void addData(contact_info User){
        createSession();
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
