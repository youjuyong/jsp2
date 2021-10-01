<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>http 프로토콜은 stateless </div>
<%
	String id = session.getId();
	out.print(id);
	out.print("<br>");
	long start = session.getCreationTime();
	out.print("세션 생성 시간 long:" + start);
	out.print("<br>");
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	out.print("세션 생성 시간 : " +df.format(start));
	
	out.print("<br>");
	long exp = session.getMaxInactiveInterval();
	out.print("세션 유효 시간 : " + exp + "초," );
	
	session.setMaxInactiveInterval(60);
	
	long last =session.getLastAccessedTime();
	out.print("최근 접속 시간 :" +df.format(last));
%>
</body>
</html>