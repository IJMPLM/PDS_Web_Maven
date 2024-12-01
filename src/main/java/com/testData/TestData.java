package com.testData;

import java.util.HashMap;
import java.util.Map;


public class TestData {
    public static Map<String, String>[] getData() {
        Map<String, String>[] data = new HashMap[15];

        for (int i = 0; i < 15; i++) {
            data[i] = new HashMap<>();
            data[i].put("id", Integer.toString(i + 1));
            data[i].put("lastname", "Lastname" + (i + 1));
            data[i].put("firstname", "Firstname" + (i + 1));
            data[i].put("middlename", "Middlename" + (i + 1));
            data[i].put("gender", i % 2 == 0 ? "Male" : "Female");
        }
        return data;
    } 
}
