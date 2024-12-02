package com.pds_web_maven.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {
    public HashMap<String, String> gitVal() {
        HashMap<String, String> respondent = new HashMap<String, String>();
        return respondent;
    }
    public List<HashMap<String, String>> getValues() {
        List<HashMap<String, String>> respondent = new ArrayList<>();
        return respondent;
    }
    public static void main(String[] args){
        DashboardInfo ePI = new DashboardInfo();
        Map<String, String>[] abc = ePI.getValues();
        
        for (Map<String, String> map : abc){
            System.out.println(map.get("fullname"));
        }
    }
    
}