<%@page import="db.RentCarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String rday = request.getParameter("rday");
	
	RentCarDAO rdao=new RentCarDAO();
	rdao.carRemoveReserve(id,rday);
	response.sendRedirect("RentCarMain.jsp?center=CarReserveView.jsp");
%>
</body>
</html>