package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_children;
import java.util.List;
import java.util.Map;

public class Main {
    
    public static void main(String[] args){
        // TODO: HibernateUtil.xml (improv)
        //       YUNG DATABASEE, WALANG COLUMN FOR NAME EXT. RAAAAAH
        //       bukod sa age, include narin yung birthdate
        //       create cud
        //       NamedQueries
        //       error catching for crud
        //       query for ref values
        //       null for ext values?
        //       sql auto_increment does not start at deleted counter but rather continues on
        //       sizes ng attr
        // reformatted filename entities, C (/) R (/) U D, Added ext_name, constructors
        // counter columns are not update-able
        
        // call entity class and fill parameters, pass in the class to method
        
        Personal_infoDAO ePI = new Personal_infoDAO();
        List<Map<String, String>> abc = ePI.getData();
        
        Family_backgroundDAO eFG = new Family_backgroundDAO();
        List<Map<String, String>> def = eFG.getData();
        
        Family_childrenDAO eFC = new Family_childrenDAO();
        List<Map<String, String>> hij = eFC.getData();
        
        Contact_infoDAO eCI = new Contact_infoDAO();
        List<Map<String, String>> zx = eCI.getData();

        family_children clFC = new family_children(54);
        eFC.deleteData(clFC);
        
        // DEBUGGER
        for (Map<String, String> map : hij) {
//           System.out.println(map.get("child_fullname"));
        }
    }
}