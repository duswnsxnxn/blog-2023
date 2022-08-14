<%@page import="db.CarListBean"%>
<%@page import="java.util.Vector"%>
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
	<center>
		<table width="1000">
			<tr height="100">
				<td align="center" colspan="3"><font size="7" color="grey">
						전체 렌트카 보기 </font></td>
			</tr>
			<%
			RentCarDAO rdao = new RentCarDAO();
			Vector<CarListBean> v = rdao.getAllCar();
			int j = 0;
			for (int i = 0; i < v.size(); i++) {
				CarListBean bean = v.get(i);
				if (j % 3 == 0) {
			%>
			<tr height="220">
				<%
				}
				%>
				<td width="333" align="center"><a
					href="RentCarMain.jsp?center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
						<img alt="" src="img/<%=bean.getImg()%>" width="300" height="200">
				</a>
					<p>
						<font size="3" color="gray"><b>차량명 : <%=bean.getName()%></b></font></td>
				<%
				j = j + 1;
				}
				%>
			
		</table>
	</center>
</body>
</html>