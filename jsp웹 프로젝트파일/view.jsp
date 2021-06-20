<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    



    
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
		<td>안녕하십니까?친환경가구판매점입니다</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>김민성</td>
	</tr>
	<tr>
		<th>작성일시</th>
		<td>2021-06-19 14:30:20</td>
	</tr>
	<tr>
		<th>조회수</th>
		<td>31</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>안녕하십니까? 친환경가구판매점에 오신걸 환영합니다.
		 우리 판매점에서 다양한 친환경 가구를 만나보실수있습니다.</td>
	</tr>
</table>

<br>
<input type="button" value="목록보기" onclick="location.href='list.jsp'">
<input type="button" value="수정"
		onclick="location.href='write.jsp?num=2>'">
<input type="button" value="삭제"
		onclick="location.href='delete.jsp?num=2>'">

</body>
</html>