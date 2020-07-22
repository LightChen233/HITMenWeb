<%@page import="java.util.concurrent.locks.ReentrantLock"%>
<%@page import="java.util.concurrent.locks.Lock"%>
<%@page import="org.account.service.impl.WebServerService"%>
<%@page import="org.account.entity.PatternData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! PatternData pd =null;
	Lock lock1 = new ReentrantLock(true);
%>
<%
	
	request.setCharacterEncoding("UTF-8");
	WebServerService wss=WebServerService.createWebSever();
	//System.out.println("ccc");
	PatternData pd=wss.getPatternData();
	if(pd!=null) {//是否能够成功取到account
  		out.print("<h3>"+pd.getResult()+"</h3>"+"---");
		out.print("<h3>"+pd.getConfidence()+"</h3>"+"<br/>");
  	}else {
  		response.setIntHeader("Refresh", 1);
  	}
%>