package com.test.iot;

import java.util.HashMap;

import com.google.gson.Gson;

public class json {
public static void main(String[] orgs) {
	String json="{\"id\":\"test\",\"pwd\":\"test\"}";
	Gson gs= new Gson();
	HashMap hm = gs.fromJson(json,HashMap.class);
	
	System.out.println(hm.get("id"));
	System.out.println(hm.get("pwd"));
}
}
