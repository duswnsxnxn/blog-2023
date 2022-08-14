<%@page import="db.CarListBean"%>
<%@page import="db.RentCarDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	%>
	<jsp:useBean id="rbean" class="db.CarReserveBean">
		<jsp:setProperty name="rbean" property="*" />
	</jsp:useBean>

	<%
	String id = (String) session.getAttribute("id");

	if (id == null) {
	%>
	<script>
		alert("로그인 후 예약이 가능합니다.")
		location.href='RentCarMain.jsp?center=MemberLogin.jsp';
	</script>
	<%
	}
	
	Date d1 = new Date();
	Date d2 = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
	d1 = sdf.parse(rbean.getRday());
	d2 = sdf.parse(sdf.format(d2));
	
	int compare = d1.compareTo(d2);
	if(compare < 0){
	%>
	<script>
	alert("현재 시스템 날짜보다 이전 날짜는 선택할 수 없음")
	history.go(-1);
	</script>
	<%
	}
	String id1 = (String)session.getAttribute("id");
	rbean.setId(id1);
	RentCarDAO rdao = new RentCarDAO();
	rdao.setReserveCar(rbean);
	CarListBean cbean= rdao.getOneCar(rbean.getNo());
	int totalcar=cbean.getPrice()*rbean.getQty()*rbean.getDday();
	int usein=0;
	if(rbean.getUsein()==1)usein=10000;
	int usewifi=0;
	if(rbean.getUsewifi()==1)usewifi=10000;
	int useseat=0;
	if(rbean.getUseseat()==1)useseat=10000;
	int totaloption = rbean.getQty()*rbean.getDday()*(usein+usewifi+useseat);
	%>
	<center>
	<table width="1000">
	<tr height="100">
	<td align="center">
	<font size="6" color="gray"> 차량 예약 완료 화면 </font></td>
	</tr>
	<tr>
	<td align="center">
	<img alt="" src="img/<%=cbean.getImg()%>" width="470"></td>
	</tr>
	<tr height="50">
	<td align="center">
	<font size="6" color="gray"> 차량 총예약 금액<%=totalcar %> 원 </font></td>
	</tr>
	<tr height="50">
	<td align="center">
	<font size="6" color="gray"> 차량 총옵션 금액<%=totaloption %> 원 </font></td>
	</tr>
	<tr height="50">
	<td align="center">
	<font size="6" color="gray"> 차량 총 금액<%=totaloption+totalcar %> 원 </font></td>
	</tr>
	</table>
	</center>
	
</body>
</html>