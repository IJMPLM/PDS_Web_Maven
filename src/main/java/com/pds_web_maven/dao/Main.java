package com.pds_web_maven.dao;

import java.time.LocalDate;

public class Main {
    public static void main(String[] args){
        ReadPersonal_info ePI = new ReadPersonal_info();
        System.out.println(ePI.getValues());
    }
}
