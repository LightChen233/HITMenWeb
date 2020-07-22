package org.account.service.impl;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.Socket;

import org.account.entity.PatternData;

public class HandlerService implements Runnable {
	private Socket socket = null;
	private PatternData pd;
    public HandlerService(Socket socket){
        this.socket = socket;
    }
	@Override
	public void run() {
		DataInputStream reader = null;
        PrintWriter writer = null;
        try{
            InputStream inFromServer = socket.getInputStream();
            reader = new DataInputStream(inFromServer);
            System.out.println("server reading... ");
            String usrname = "";
            char tmp;
            while((tmp = (char)reader.read()) != '\n'){
            	usrname = usrname + tmp;
            }
            System.out.println(usrname + '\n');
            int result = reader.read();
            float confidence = reader.readFloat();
            WebServerService wss=WebServerService.createWebSever();
            wss.lockWeb();
            pd=new PatternData(result,confidence);
            wss.unlockWeb();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(socket != null){
                try {
                    socket.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            socket = null;
            if(reader != null){
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            reader = null;
            if(writer != null){
                writer.close();
            }
            writer = null;
        }

	}
	
	public PatternData getPatternData() {
		return pd;
	}
}
