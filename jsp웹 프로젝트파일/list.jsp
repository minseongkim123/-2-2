<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
<style>
		table	{ width:680px; text-align:center; }
		th		{ background-color:cyan; }
		
		.num		{ width: 80px; }
		.title		{ width:230px; }
		.writer		{ width:100px; }
		.regtime	{ width:180px; }
		
		a:link		{ text-decoration:none; color:blue; }
		a:visited 	{ text-decoration:none; color:gray; }
		a:hover 	{ text-decoration:none; color:red; }
</style>
<table>
	<tr>
		<th class="num"		>번호		</th>
		<th class="title"	>제목		</th>
		<th class="writer"	>작성자	</th>
		<th class="regtime"	>작성일시	</th>
		<th 				>조회수	</th>
	</tr>
	<tr>
		<td>5</td>
		<td style="text-align:left;">
		 <a href="view.jsp?num=3">여름바캉스 특별세일안내입니다!</a>
		</td>
		<td>김민성</td>
		<td>2021-06-20 22:10:45</td>
		<td>12</td>
	<tr>
		<td>4</td>
		<td style="text-align:left;">
		 <a href="view.jsp?num=3">새로운 가구 입고안내입니다.</a>
		</td>
		<td>박천수</td>
		<td>2021-06-20 21:03:50</td>
		<td>12</td>
	<tr>
		<td>3</td>
		<td style="text-align:left;">
		 <a href="view.jsp?num=3">가구세일안내입니다.</a>
		</td>
		<td>신수민</td>
		<td>2021-06-20 20:32:20</td>
		<td>12</td>
	<tr>
		<td>2</td>
		<td style="text-align:left;">
		 <a href="view.jsp?num=3">공지사항을 안내해드립니다.</a>
		</td>
		<td>김민성</td>
		<td>2021-06-20 17:10:50</td>
		<td>12</td>
	</tr>
	<tr>
		<td>1</td>
		<td style="text-align:left;">
		 <a href="view.jsp?num=3">안녕하십니까?친환경가구판매점입니다</a>
		</td>
		<td>김민성</td>
		<td>2021-06-19 14:30:20</td>
		<td>31</td>
	</tr>
		 
	<c:forEach var="msg" items="${msgList}">	
	
	<tr>
		<tb>${msg.num}</tb>
		<td style="text-align:left;">
		 <a href="view?num=${msg.num}&page=${param.page}">
		 	${msg.title}
				</a>
			</td>
			<td>${msg.writer}</td>
			<td>${msg.regtime}</td>
			<td>${msg.hits}</td>
		</tr>
	</c:forEach>
</table>

<br>
<div style="width:680px; text-aligh:center;">
	<c:forEach var="pgn" items="${pgnList}">
	<a class="pgn" href="list?page=${pgn.pageNo}">
	<c:choose>
	 <c:when test="${pgn.curPage}">
	  <u>${pgn.display}</u>
	 </c:when>
	 <c:otherwise>
	 	${pgn.display}
	 </c:otherwise>
	 </c:choose>
	</a>&nbsp;
	</c:forEach>
</div>
	 


<br>
<input type="button" value="글쓰기" onclick="location.href='write.jsp'">
</body>
</html>
