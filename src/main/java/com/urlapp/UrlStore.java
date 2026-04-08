package com.urlapp;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class UrlStore {

    private static Map<String, String> map = new HashMap<>();

    public static String shorten(String longUrl) {
        String key = UUID.randomUUID().toString().substring(0, 6);
        map.put(key, longUrl);
        return key;
    }

    public static String getUrl(String key) {
        return map.get(key);
    }
}
