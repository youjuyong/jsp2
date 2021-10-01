<%@page import="dto.Comment"%>
<%@page import="java.util.List"%>
<%@page import="dao.CommentDao"%>
<%@page import="dto.Freeboard"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pageNo = Integer.parseInt(request.getParameter("page"));
	FreeboardDao dao = FreeboardDao.getInstance();
	//session 확인후 
	if(session.getAttribute("readIdx") !=null){
		StringBuilder readIdx = (StringBuilder)session.getAttribute("readIdx");
		boolean status = readIdx.toString().contains("/"+idx+"/");
		if(!status){
			dao.readCount(idx);
			readIdx.append(idx + "/");
		}
	}
	dao.readCount(idx);
	Freeboard bean = dao.getOne(idx);
	
	CommentDao cdao = CommentDao.getInstance();
	List<Comment> cmts = cdao.getComments(idx);
	request.setAttribute("cmtlist",cmts);
	
	request.setAttribute("page",pageNo);
	
	//bean 객체로 참조하고 있는값은 detailView.jsp 에게 전달하고 브라우저에 출력하도록 합니다.
	request.setAttribute("bean", bean);
	pageContext.forward("detailView.jsp");
%>