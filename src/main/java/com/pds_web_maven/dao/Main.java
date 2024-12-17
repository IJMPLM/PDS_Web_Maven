package com.pds_web_maven.dao;

import com.pds_web_maven.entities.family_children;
import com.pds_web_maven.entities.personal_info;
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
        List<Map<String, String>> hij = eFC.getChildren(62);
        
        Contact_infoDAO eCI = new Contact_infoDAO();
        List<Map<String, String>> zx = eCI.getData();

        family_children clFC = new family_children();
//        eFC.deleteChildrenCascade(62);
//        eCI.deleteContactCascade(61);
//        eFG.deleteCascadeFamBg(61);
        ePI.deleteEverything(61);
          
        personal_info clPI = new personal_info("1", "1", "1", "1", 
                "Mentos", "Morales", "Peter", "Jr.", "2000-12-12", "Bulacan", 
                "69", "69", "A+", "123", "123", "123", "123", "123", "123");
//        personal_info newUser = ePI.addData(clPI);
        
        // DEBUGGER
        for (Map<String, String> map : hij) {
//           System.out.println(map.get("child_fullname"));
        }
    }
}