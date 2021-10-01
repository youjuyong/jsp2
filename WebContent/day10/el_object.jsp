<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL 내장(implicit)객체</h3>
	<% pageContext.setAttribute("data1", 23); 
	//  pageContext.setAttribute("data", 23);	
	%>
	<% request.setAttribute("data2", "hi~~");
	//request.setAttribute("data", "hi~~");
	%>
	<% session.setAttribute("data3", "hi jsp");
	//session.setAttribute("data", "hi jsp");
	//session 에 저장된 애트리뷰트는 세션 time out 전까지 또는 세션 종료되기전까지 남아있습니다.
	%>
	<% application.setAttribute("data4", "hello java"); 
	application.setAttribute("data", "hello java");
	%>

<dl>
	<dt>pageScope</dt>
	<dd>pageContext 에 저장된 객체(애트리뷰트) 참조 : 	${pageScope.data1 }</dd>
	<dd>pageContext 에 저장된 객체(애트리뷰트) 참조 \${pageScope.data }: 	${pageScope.data }</dd>

	<dt>requestScope</dt>
	<dd>request 에 저장된 객체(애트리뷰트) 참조 : ${requestScope.data2 }</dd>
	<dd>request 에 저장된 객체(애트리뷰트) 참조 \${requestScope.data }: ${requestScope.data }</dd>

	<dt>sessionScope</dt>
	<dd>session 에 저장된 객체(애트리뷰트) 참조 : ${sessionScope.data3 }</dd>
	<dd>session 에 저장된 객체(애트리뷰트) 참조 \${sessionScope.data }: ${sessionScope.data }</dd>

	<dt>applicationScop</dt>
	<dd>application 에 저장된 객체(애트리뷰트) 참조 : ${applicationScope.data4 }</dd>
	<dd>application 에 저장된 객체(애트리뷰트) 참조 \${applicationScope.data }: ${applicationScope.data }</dd>
	<dd>scope 을 생략하고 사용 \${data } ? : ${data }</dd>

	<dt>param</dt>
	<dd>request.getParameter 메소드를 대신하는 el객체</dd>
	<dt>header</dt>
	<dd>request.getHeader 메소드로 특정요청헤더 항목을가여졸떄 사용</dd>
	<dt>cookie</dt>
	<dd>브라우저에 저장된 쿠키값 가져올때 사용</dd>
	<dt>pageContext</dt>
	<dd>요청을 처리하는 페이지 정보 저장객체, 예)\${pageContext.request.remoteAddr }: ${pageContext.request.remoteAddr }</dd>
	
	
	
	<%
		pageContext.getRequest();
	
		pageContext.getSession();
		
		pageContext.getResponse();
		
		pageContext.getOut();
		
		pageContext.getServletContext();
		
		pageContext.getServletContext();
		
		pageContext.getServletConfig();
		
		pageContext.getPage();
		
	%>
	
	<dt>기타 3가지</dt>
	<dd>paramValues, headerValues, initParam</dd>
	<dd>요청을 처리하는 페이지 정보 
</dl>
</body>
</html>