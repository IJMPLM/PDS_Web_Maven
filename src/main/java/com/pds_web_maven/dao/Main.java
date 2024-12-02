package com.pds_web_maven.dao;

import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args){
        // TODO: gawing dynamic yung size ng map (done),
        //       continue sa family_bg,
        //       HibernateUtil.xml
        ReadPersonal_Info ePI = new ReadPersonal_Info();
        List<Map<String, String>> abc = ePI.getData();
        
        // DEBUGGER
        for (Map<String, String> map : abc) {
            System.out.println(map.get("fullname"));
        }
    }
}