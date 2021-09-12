package com.shun.hack;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class ServerThread extends Thread {
        public Context context;
        boolean isResult = false;
        String dataResult = "";

        public ServerThread() {
        }
        public void sendResult(String data) {
            isResult = true;
            dataResult = data;
        }
        @Override
        public void run() {
            ServerSocket serverSocket = null;
            try {
                serverSocket = new ServerSocket(9090);

                boolean mainRun = true;
                while(mainRun) {
                    Log.i("serverSetsuna", "Menunggu koneksi diport 9090");

                    try (Socket socket = serverSocket.accept())
                    {
                        Log.i("serverSetsuna", "Terhubung dengan "+socket.getInetAddress().getHostAddress());

                        PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                        xx.print("\n\n\n######################\n");
                        xx.print(" Translate Server 1.0 \n");
                        xx.print("######################\n\n");

                        xx.print("Follwing this help: \n");
                        xx.print("l+enter: to picup result translate\n");
                        xx.print("enter  : to process text\n");
                        xx.print("l+enter if you new text translate\n");
                        xx.print("text input here to translate language\n\n\n");
                        xx.flush();

                        try (BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()))) {
                            
                            char[] buffer = new char[1000];
                            String pesan = "";
                            StringBuffer strbuf = new StringBuffer();
                            int index;

                            while ((index = in.read(buffer, 0, 1000)) != 0) 
                            {
                                pesan = new String(buffer, 0, index);
                            
                                if (isResult) {
                                    isResult = false;
                                    xx.print(dataResult+"\n\n");
                                    xx.flush();
                                }
                                if (index == 3) {
                                    strbuf.delete(0, strbuf.length());

                                    xx.print("\n\n============= Text Output ================\n");

                                    if (MainFileManager.getTransResultTelnet.equals("")) { // this smali Rename to CopyDropService
                                        xx.print("<< Please wait... >>\n");
                                        xx.flush();
                                    } else {
                                        xx.print("\n\n"+MainFileManager.getTransResultTelnet+"\n\n"); // this smali Rename to CopyDropService
                                        MainFileManager.getTransResultTelnet = ""; // this smali Rename to CopyDropService
                                        xx.flush();

                                        Intent intent = new Intent(Intent.ACTION_MAIN);
                                        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                                        intent.addCategory(Intent.CATEGORY_HOME);
                                        context.startActivity(intent);
                                    }
                                    xx.print("============= Text Output ================\n\n");
                                    xx.flush();
                                }
                                else if (index == 2) {
                                    xx.print("<< Tranlate Process... Press l+Enter to result >>\n");
                                    xx.flush();

                                    Intent intent = new Intent(context, MainFileManager.class); // edit to CopyDropActivity
                                    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                                    intent.putExtra("key_text_to_be_translated", strbuf.toString());
                                    context.startActivity(intent);

                                    Log.i("serverSetsuna", "\n============= Text input ================");
                                    Log.i("serverSetsuna", strbuf.toString());
                                    Log.i("serverSetsuna", "============= Text input ================\n");
                                }
                                else {
                                    strbuf.append(pesan);
                                }
                            }
                        }
                    }
                    Log.i("serverSetsuna", "Koneksi tutup");
                }
            } catch (final IOException e) {
                Log.i("serverSetsuna", "Kesalahan koneksi: "+ e.getMessage());

            } finally {
                if (serverSocket != null) {
                    try {
                        serverSocket.close();
                    }catch(IOException e) {
                        Log.i("serverSetsuna", "Tidak dapat menutup socket: "+e.getMessage());
                    }
                }
            }
        }
    }