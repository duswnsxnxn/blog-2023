<%@page import="model.BoardDAO"%>
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
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="boardbean" class="model.BoardBean">
		<jsp:setProperty name="boardbean" property="*" />
	</jsp:useBean>
	<%
	BoardDAO bdao = new BoardDAO();
	String pass = bdao.getPass(boardbean.getNum());
	if (pass.equals(boardbean.getPassword())) {
		bdao.updateBoard(boardbean);
		response.sendRedirect("BoardList.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("패스워드가 일치하지 않습니다.다시 확인 후 수정해주세요.");
		history.go(-1);
	</script>
	<%
	}
	%>
</body>
</html>