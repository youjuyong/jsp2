<%@page import="dto.SessionDto"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("userid");
	String password = request.getParameter("password"); 

	//id는 'admin' 이고 password 'jcpdev' 라고 가정하고 합니다.
	
	//if(id.equals("admin") && password.equals("jcpdev")){ //--> db에서 확인하도록 변경예정입니다.
	 Map<String,String> map = new HashMap<>();
	 map.put("email",id);
	 map.put("password",password);
	 CustomerDao dao = CustomerDao.getInstance();
	 SessionDto user = dao.login(map);
	 if(user !=null){	
		//로그인 정보 일치
		//session 객체에 로그인 id저장합니다.
	
		session.setAttribute("user", user);

		request.setAttribute("message","로그인 되었습니다.");
		request.setAttribute("url","home.jsp");
		pageContext.include("error/alert.jsp"); //pageContext.forward 페이지 이동 ,이하 아래의 코드가 실행안됨
		// include 해당페이지 *이 자리에 포함하기 때문에 이하 아래의 코드가 실행된다.
		
	}else{
		//로그인 정보 불일치
		
		request.setAttribute("message","로그인 정보가 올바르지 않습니다.");
		request.setAttribute("url","home.jsp");
		pageContext.include("error/alert.jsp");
		
	}

%>
