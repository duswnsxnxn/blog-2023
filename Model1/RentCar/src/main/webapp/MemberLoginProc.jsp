<%@page import="db.RentCarDAO"%>
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
request.setCharacterEncoding("UTF-8");

String id=request.getParameter("id");
String pass = request.getParameter("pass");
RentCarDAO rdao = new RentCarDAO();

int result = rdao.getMember(id,pass);

if (result == 0) {
	%>
	<script>
		alert("회원 아이디 또는 패스워드가 틀립니다.")
		location.href='RentCarMain.jsp?center=MemberLogin.jsp';
	</script>
	<%
	}else{
		session.setAttribute("id", id);
		response.sendRedirect("RentCarMain.jsp");
	}
	%>
</body>
</html>