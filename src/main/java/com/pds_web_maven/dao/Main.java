package com.pds_web_maven.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args){
        ReadPersonal_Info ePI = new ReadPersonal_Info();
        Map<String, String>[] abc = ePI.getValues();
        
        for (Map<String, String> map : abc){
            System.out.println(map.get("fullname"));
        }
    }
}