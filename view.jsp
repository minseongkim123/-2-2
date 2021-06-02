<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<%
	//지정된 글 번호 얻기
	int num = Integer.parseInt(request.getParameter("num"));

	//게시글 데이터를 담은 변수 정의
	String writer	= "";
	String title	= "";
	String content	= "";
	String regtime	= "";
	int		hits	= 0;
	
	//지정된 글 번호를 가진 레코드 읽기
	Class.forName("org.mariadb.jdbc.Driver");
	try (
		Connection conn = DriverManager.getConnection(
				"jdbc:mariadb://localhost:3306/jspdb", "jsp", "1234");
		Statement stmt = conn.createStatement();
			
			// 쿼리 실행
			ResultSet rs = stmt.executeQuery(
					"select * from board where num=" + num);
			) {
				if (rs.next()) {

					//글 데이터를 변수에 저장
					writer	= rs.getString("writer");
					title	= rs.getString("title");
					content	= rs.getString("content");
					regtime	= rs.getString("regtime");
					hits	= rs.getInt		("hits");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table { width:680px; text-align:center; }
	th	  { width:100px; background-color:cyan; }
	td	  { text-align:left; border:1px solid gray; }
</style>
<title>글보기</title>
</head>
<body>

<table>
	<tr>
		<th>제목</th>
		<td>글 제목 2</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>장길산</td>
	</tr>
	<tr>
		<th>작성일시</th>
		<td>2020-02-06 14:32:25</td>
	</tr>
	<tr>
		<th>조회수</th>
		<td>31</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>글의 내용입니다.</td>
	</tr>
</table>

<br>
<input type="button" value="목록보기" onclick="location.href='list.jsp'">
<input type="button" value="수정"
		onclick="location.href='write.jsp?num=2'">
<input type="button" value="삭제"
		onclick="location.href='delete.jsp?num=2'">

</body>
</html>