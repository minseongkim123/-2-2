<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

	
	// 글 제목과 내용이 웹 페이지에 올바르게 출력
	// 공백과 줄넘김 처리
	dto.setTitle(dto.getTitle().replace(" ", "&nbsp;"));
	dto.setContent(dto.getContent().replace(" ", "&nbsp;").replace("\n", "<br>"));
	
	// DTO 객체를 request의 속성 "msg"로 등록
	request.setAttribute("msg", dto);
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
		<td>안녕하십니까?</td>
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
		<td></td>
	</tr>
</table>

<br>
<input type="button" value="목록보기" onclick="location.href='list'">
<input type="button" value="수정"
		onclick="location.href='write?num=2>'">
<input type="button" value="삭제"
		onclick="location.href='delete.jsp?num=2>'">

</body>
</html>