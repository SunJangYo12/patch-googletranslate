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

                        try (BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()))) {
                            String pesan;
                            while ((pesan = in.readLine()) != null) {
                                Log.i("serverSetsuna", pesan);

                                if (isResult) {
                                    isResult = false;
                                    PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                                    xx.print(dataResult+"\n");
                                    xx.flush();
                                }

                                if (pesan.equals("tes")) {
                                    PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                                    xx.print("zzzz\n");
                                    xx.flush();
                                }
                                else if (pesan.equals("close")) {
                                    PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                                    xx.print("<< close accept >>\n");
                                    xx.flush();
                                    mainRun = false;
                                    break;
                                }
                                else if (pesan.equals("open")) {
                                    PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                                    xx.print("<< ini tes activity opened >>\n");
                                    xx.flush();
                                }
                                else if (pesan.equals("n")) {
                                    if (MainFileManager.getTransResultTelnet.equals("")) { // this smali Rename to CopyDropService
                                        PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                                        xx.print("<< Please wait... >>\n");
                                        xx.flush();
                                    } else {
                                        PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                                        xx.print("\n"+MainFileManager.getTransResultTelnet+"\n"); // this smali Rename to CopyDropService
                                        MainFileManager.getTransResultTelnet = ""; // this smali Rename to CopyDropService
                                        xx.flush();

                                        Intent intent = new Intent(Intent.ACTION_MAIN);
                                        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                                        intent.addCategory(Intent.CATEGORY_HOME);
                                        context.startActivity(intent);
                                    }
                                }
                                else {
                                    PrintWriter xx = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
                                    xx.print("<< new tranlate Process... Press n to result>>\n");
                                    xx.flush();

                                    Intent intent = new Intent(context, MainFileManager.class); // edit to CopyDropActivity
                                    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                                    intent.putExtra("key_text_to_be_translated", pesan);
                                    context.startActivity(intent);
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