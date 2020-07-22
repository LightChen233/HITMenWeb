package org.account.service.impl;

import java.net.*;
import java.io.*;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import org.account.entity.PatternData;

import java.util.concurrent.ExecutorService;

public class WebServerService implements Runnable{
	private int port;
	private HandlerService hs = null;
    private ServerSocket server = null;
    private static ExecutorService service = Executors.newFixedThreadPool(50);
    private static Lock lock1 = new ReentrantLock(true);
    private PatternData pd;
    private Thread t;
    public Lock lc = WebServerService.lock1;
    /*
     * 单例模式
     */
    private volatile static WebServerService UniqueServer;
    private WebServerService() {
		this.port=6666;
	} 
    private WebServerService(int port) {
		this.port=port;
	}
	public static  WebServerService createWebSever() {
		if(UniqueServer==null) {
			UniqueServer=new WebServerService();
		}
		return UniqueServer;
	}
	public static  WebServerService createWebSever(int port) {
		if(UniqueServer==null) {
			synchronized (WebServerService.class) {
				if(UniqueServer==null) {
					UniqueServer=new WebServerService(port);
				}
			}
		}
		return UniqueServer;
	}
	/*
	 * Runnable
	 */
    @Override
	public void run() {
		try{
            InetAddress address = InetAddress.getByName("0.0.0.0");
            System.out.println("ss" + address.getHostName() + ", ip锟斤拷址锟斤拷" + address.getHostAddress()+ String.format("锟斤拷 锟剿口号ｏ拷%d",port));
            System.out.print("Directory can't be found");
            server = new ServerSocket(port,0,address);
            System.out.println("server started!");
            while (true) {
                Socket socket = server.accept();
                hs=new HandlerService(socket);
                service.execute(hs);
            }
        }catch(Exception e){
            try {
                this.lc.lock();
                pd.setResult(-1);
                pd.setConfidence(-1);
//                System.out.print("<h3>" + "--" + "</h3>" + "---");
//                System.out.print("<h3>" + "--" + "</h3>" + "<br/>");
                this.lc.unlock();
            }catch(Exception e2){

            }
        /*****************************************/



        }finally{
            if(server != null) {
                try {
                    server.close();
                } catch (IOException e) {
                    //e.printStackTrace();
                }
            }
        }
	}
    public void start (){
        if( t == null){
            t = new Thread(this);
            t.start();
        }
    }
    public void lockWeb() {
    	lock1.lock();
    }
    public void unlockWeb() {
    	lock1.unlock();
    }
    public PatternData getPatternData() {
    	return pd;
    }
}
