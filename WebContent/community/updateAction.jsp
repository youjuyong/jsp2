<%@page import="dto.Freeboard"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int pageNo = Integer.parseInt(request.getParameter("page"));
	int idx = Integer.parseInt(request.getParameter("idx"));
	FreeboardDao dao = FreeboardDao.getInstance();
	Freeboard dto = dao.getOne(idx);
	
	request.setAttribute("page", pageNo);
	request.setAttribute("bean",dto);
	pageContext.forward("updateView.jsp");
	
%>