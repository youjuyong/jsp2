<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//자바 메소드 contains
	String readIdx= "/12/34/159/147";
	boolean result = readIdx.contains("/344/");
	out.print(result);
%>
</body>
</html>