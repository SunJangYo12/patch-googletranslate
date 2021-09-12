package com.shun.hack.memori;

import android.content.*;

public class SharedMemori {
    private SharedPreferences settings;

    public SharedMemori(Context context) {
        settings = context.getSharedPreferences("ShunSettings", 0);
    }
    public SharedMemori() {}

    public static boolean getStaticSharedMemori(Context context, String key) {
        SharedPreferences settings = context.getSharedPreferences("ShunSettings", 0);
    
        return settings.getBoolean(key,false);
    }

    public void setSharedMemori(String key, boolean data) {
        SharedPreferences.Editor editor = settings.edit();
        editor.putBoolean(key, data);
        editor.commit();
    }
    public boolean getSharedMemori(String key) {
        return settings.getBoolean(key,false);
    }

    public void setStrSharedMemori(String key, String data) {
        SharedPreferences.Editor editor = settings.edit();
        editor.putString(key, data);
        editor.commit();
    }
    public String getStrSharedMemori(String key) {
        return settings.getString(key,"");
    }
  
}