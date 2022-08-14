<%@page import="model.BoardDAO"%>
<%@page import="java.util.Vector"%>
<%@page import="model.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style>
#rep {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>

	<center>
		<h2>전체 게시글 보기</h2>
		<%
		int pageSize=10;
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null){
			pageNum="1";
			
		}
		int count=0;
		int number=0;
		int currentPage = Integer.parseInt(pageNum);
		
		
		BoardDAO bdao = new BoardDAO();
		count = bdao.getAllCount();
		
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage*pageSize;

		Vector<BoardBean> vec = bdao.getAllBoard(startRow,endRow);
		number = count - (currentPage-1)*pageSize;
		%>
		<table width="600" border="1" bgcolor="skyblue">
			<tr height="40">
				<td colspan="5" align="right"><input type="button" value="글쓰기"
					onclick="location.href='BoardWriteForm.jsp'"></td>
			</tr>
			<tr height="40">
				<td width="50" align="center">번호</td>
				<td width="320" align="center">제목</td>
				<td width="100" align="center">작성자</td>
				<td width="150" align="center">작성일</td>
				<td width="50" align="center">조회수</td>
			</tr>
			<%
			for (int i = 0; i < vec.size(); i++) {
				BoardBean bean = vec.get(i);
			%>
			<tr height="40">
				<td width="50" align="center"><%=number--%></td>
				<td width="320" align="left"><a
					href="BoardInfo.jsp?num=<%=bean.getNum()%>" id="rep"> <%
 if (bean.getRe_step() > 1) {
 	for (int j = 0; j < (bean.getRe_step() - 1) * 5; j++) {
 %>&nbsp; <%
 }
 }
 %> <%=bean.getSubject()%></a></td>
				<td width="100" align="center"><%=bean.getWrite()%></td>
				<td width="150" align="center"><%=bean.getReg_date()%></td>
				<td width="50" align="center"><%=bean.getReadcount()%></td>
			</tr>
			<%
			}
			%>

		</table>
		<p>
		<%
		if(count > 0){
			int pageCount = count / pageSize +(count%pageSize == 0 ? 0:1);
			int startPage=1;
			if(currentPage %10 !=0){
				startPage=(int)(currentPage/10)*10+1;
			}else{
				startPage=((int)(currentPage/10)-1)*10+1;
			}
			int pageBlock=10;
			int endPage = startPage+pageBlock-1;
			
			if(endPage > pageCount) endPage = pageCount;
			if(startPage > 10){
		%>
		<a href="BoardList.jsp?pageNum=<%=startPage-10 %>"> [이전] </a>
		<%
			}
			for (int i=startPage;i<=endPage;i++){
				%>
				<a href="BoardList.jsp?pageNum=<%=i %>"> [<%=i %>] </a>
			<% 
			}
			if(endPage < pageCount){
				%>
				<a href="BoardList.jsp?pageNum=<%=startPage+10 %>"> [다음] </a>
				<% 
			}
		}
		%>
	</center>
</body>
</html>