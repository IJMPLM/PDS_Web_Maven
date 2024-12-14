package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_children;
import java.util.List;
import java.util.Map;

public class Main {
    
    public static void main(String[] args){
        // TODO: HibernateUtil.xml (improv)
        //       bukod sa age, include narin yung birthdate
        //       NamedQueries
        //       error catching for crud
        //       query for ref values
        //       null for ext values?
        //       lagay ext value sa fam bg
        // counter columns are not update-able
        
        Personal_infoDAO ePI = new Personal_infoDAO();
        List<Map<String, String>> abc = ePI.getData();
        
        Family_backgroundDAO eFG = new Family_backgroundDAO();
        List<Map<String, String>> def = eFG.getData();
        
        Family_childrenDAO eFC = new Family_childrenDAO();
        List<Map<String, String>> hij = eFC.getData();
        
        Contact_infoDAO eCI = new Contact_infoDAO();
        List<Map<String, String>> zx = eCI.getData();

        family_children clFC = new family_children(54);
//        eFC.deleteData(clFC);
        
        // DEBUGGER
        for (Map<String, String> map : abc) {
           System.out.println(map.get("fullname"));
        }
    }
}