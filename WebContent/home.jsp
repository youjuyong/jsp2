<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${sessionScop.readIdx==null}">
	<% 
		StringBuilder readIdx= new StringBuilder("/");
		session.setAttribute("readIdx",readIdx);
	%>
</c:if>
	<a href = "./community/listAction.jsp"> 자유게시판 </a>
	<c:if test="${sessionScope.user == null }">
		<a href = "loginView.jsp">로그인</a>
	</c:if>
	<c:if test="${sessionScope.user != null }">
	<br>${user.name }(${user.email }) 님 반갑습니다.<br>
		<a href="logout.jsp">로그아웃</a>	
	</c:if>
</body>
</html>