package com.pds_web_maven.dao;

import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args){
        // TODO: continue sa family_bg,
        //       HibernateUtil.xml,
        //       YUNG DATABASEE, WALANG COLUMN FOR NAME EXT. RAAAAAH
        ReadPersonal_Info ePI = new ReadPersonal_Info();
        List<Map<String, String>> abc = ePI.getData();
        
        ReadFamily_background eFG = new ReadFamily_background();
        List<Map<String, String>> def = eFG.getData();
        
        // DEBUGGER
        for (Map<String, String> map : def) {
            System.out.println(map.get("spouse_fullname"));
        }
    }
}