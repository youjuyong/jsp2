<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>동아리 커뮤니티</title>
<link rel="stylesheet" href="../css/boardlist.css?v=3">
</head>
<body>
<h3>동아리 커뮤니티</h3>
<hr>
<div style="margin:auto;">
<ul>
	<li>
		<ul  class="row">
		<li>번호</li>
		<li>제목</li>
		<li>작성자</li>
		<li>조회수</li>
		<li>작성일</li>
		</ul>
	</li>
	<c:set var="pno" value = "${pageDto.currentPage}"/>
 	<c:forEach var="vo" items="${list}" varStatus="status">  <!-- vo가 Freeboard타입  blists.getList() 실행-->
<li>
<ul  class="row">
		<li>${vo.idx }</li>
		<li><a href="detailAction.jsp?idx=${vo.idx}&page=${pno}" class="title">${vo.subject }</a>
	 		...<span style="color:orange;font-size: 80%;">(${vo.commentCount })
	 		</span></li>
		<li>${vo.name }</li>
		<li>${vo.readCount }</li>
		<li><fmt:formatDate value="${vo.wdate }" pattern="yyyy-MM-dd" var="wdate"/>
		<c:if test='${wdate == today }'>
		<fmt:formatDate value = "${vo.wdate }" type="time" />
		</c:if>
		<c:if test ='${wdate != today }'>
		<fmt:formatDate value="${vo.wdate }" pattern="yyyy-MM-dd"/>
		</c:if>
		</li>
	</ul>
</li>
 	</c:forEach>
</ul>
<div style="margin:auto;">
 	Go!<a class="button" href="insertView.jsp">글쓰기</a>
 	<a class="button" href="${pageContext.request.contextPath }">홈 : ${pageContext.request.contextPath }
 	</a>&nbsp;&nbsp;&nbsp;작성글 총 개수 :  ${pageDto.totalCount }
</div>
<div style="text-align: center;">
<hr>
   <a class="pagenum" href="?page=1">&lt;&lt;</a>
   <c:if test="${pageDto.startPage !=1 }">
   
   <a class="pagenum" href="?page=${pageDto.startPage-1}">&lt;</a>
   </c:if>
   
   <c:forEach var="i" begin="${pageDto.startPage}" end="${pageDto.endPage}">
      <a class="pagenum" href="?page=${i }">${i }</a>
   </c:forEach>
   
   <c:if test="${pageDto.endPage !=pageDto.totalPage }">
   <a class="pagenum" href="?page=${pageDto.endPage+1}">&gt;</a>
   <a class="pagenum" href="?page=${pageDto.totalPage}">&gt;&gt;</a>
   	</c:if>
</div>   
</div>
</body>
</html>








