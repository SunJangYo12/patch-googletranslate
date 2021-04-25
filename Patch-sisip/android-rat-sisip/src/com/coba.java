package com;

import android.content.Context;
import android.widget.Toast;
import com.shun.hack.MainFileManager;
import com.shun.hack.memori.*;

public class coba {

    public static boolean isFileWrite = false;

    public void classAc(Context context) {
       new MainFileManager().intentActivity(context, "this text to translate");
    }
    
    /* * * file patch * * */
    public static String orib(Context context) {
       // ini method asli
       Toast.makeText(context, "ini dari clipoard", Toast.LENGTH_LONG).show();
       return "oke";
    }
    public static String b(Context context) {
        // app manggil method ini
        if (SharedMemori.getStaticSharedMemori(context, "shunTranSer"))
        {
          isFileWrite = true;
          Toast.makeText(context, "Translate from file", Toast.LENGTH_LONG).show();
          return MainFileManager.readText("/sdcard/patch_translete_in.txt");
        }
        else {
          return orib(context);
        }
    }
    public final void writeFroma(String data) {
        if (isFileWrite) {
            MainFileManager.writeText("/sdcard/patch_translete_out.txt", data);
        }
    }

    /* * * network disable * * */
    public static boolean orid(Context context) {
       // ini method asli
       return true;
    }
    public static boolean d(Context context) {
        // app manggil method ini
        if (SharedMemori.getStaticSharedMemori(context, "shunNetwork"))
        {
          return false;
        }
        else {
          return orid(context);
        }
    }
    
}