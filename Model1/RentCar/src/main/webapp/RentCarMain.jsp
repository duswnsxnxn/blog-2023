<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<center>
<%
	String center = request.getParameter("center");
	if(center==null){
		center="Center.jsp";
	}
%>
<table width="1000">
<tr height="140" align="center">
<td align="center" width="1000"> <jsp:include page="Top.jsp"></jsp:include></td>
</tr>
<tr align="center" height="600">
<td align="center" width="1000"> <jsp:include page="<%=center %>"></jsp:include></td>
</tr>
<tr height="100" align="center">
<td align="center" width="1000"> <jsp:include page="Bottom.jsp"></jsp:include></td>
</tr>
</table>
</center>
</body>
</html>