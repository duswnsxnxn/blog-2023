<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
a
{
	color: white;
	size: 15px;
}
a:hover
{
	color: green;
}
</style>
</head>
<%
	String id = (String) session.getAttribute("id");
	if(id==null){
		id="GUEST";
	}
%>
<body>
<center>
<table width="1000">
<tr height="70">
<td colspan="4">
<a href="RentCarMain.jsp" style="text-decoration: none">
<img alt="" src="img/RENT.png" height="65">
</a>
</td>
<td align="center" width="200">
<%=id %>님 반갑습니다.
<%
if(id.equals("GUEST")){
%>
<button onclick="location.href='RentCarMain.jsp?center=MemberLogin.jsp'"> 로그인 </button>
<%
}else{%>
<button onclick="location.href='MemberLogout.jsp'"> 로그아웃 </button>
	<%
}
%>
</td>
</tr>
<tr>
<td align="center" width="200" bgcolor="red">
<font color="white" size="4"><a href="RentCarMain.jsp?center=CarReserveMain.jsp" style="text-decoration: none"> 예 약 하 기 </a></font>
</td>
<td align="center" width="200" bgcolor="red">
<font color="white" size="4"><a href="RentCarMain.jsp?center=CarReserveView.jsp" style="text-decoration: none"> 예 약 확 인 </a></font>
</td>
<td align="center" width="200" bgcolor="red">
<font color="white" size="4"><a href="#" style="text-decoration: none"> 자유게시판 </a></font>
</td>
<td align="center" width="200" bgcolor="red">
<font color="white" size="4"><a href="#" style="text-decoration: none"> 이 벤 트 </a></font>
</td>
<td align="center" width="200" bgcolor="red">
<font color="white" size="4"><a href="#" style="text-decoration: none"> 고 객 센 터 </a></font>
</td>
</tr>
</td>
</table>
</center>
</body>
</html>