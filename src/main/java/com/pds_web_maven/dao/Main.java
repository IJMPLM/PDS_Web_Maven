package com.pds_web_maven.dao;

import java.util.Map;

public class Main {
    public static void main(String[] args){
        // TODO: gawing dynamic yung size ng map
        ReadPersonal_Info ePI = new ReadPersonal_Info();
        Map<String, String>[] abc = ePI.getData(2);
        
        // DEBUGGER
        for (Map<String, String> map : abc) {
            if (map != null) { // nageerror kapag may null value since fixed lng yung size
                System.out.println(map.get("fullname"));
            }
        }
    }
}