package com.pds_web_maven.dao;

import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args){
        // TODO: family_children,
        //       HibernateUtil.xml,
        //       YUNG DATABASEE, WALANG COLUMN FOR NAME EXT. RAAAAAH
        ReadPersonal_Info ePI = new ReadPersonal_Info();
        List<Map<String, String>> abc = ePI.getData();
        
        ReadFamily_background eFG = new ReadFamily_background();
        List<Map<String, String>> def = eFG.getData();
        
        ReadFamily_children eFC = new ReadFamily_children();
        List<Map<String, String>> hij = eFC.getData();
        
        // DEBUGGER
        for (Map<String, String> map : hij) {
            System.out.println(map.get("child_dob"));
        }
    }
}