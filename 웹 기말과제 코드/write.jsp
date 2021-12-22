<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

		
	// 쿼리 실행
	ResultSet rs = stmt.executeQuery(
		"select * from board where num=" + num);
	) {
		if(rs.next()) { 
			//읽어들인 글 데이터를 변수에 저장
				writer	= rs.getString("writer");
				title	= rs.getString("title");
				content = rs.getString("content");
			
			// 글 수정 모드일 때 저장 버튼을 누르면 업데이트 실행
			action = "update.jsp?num=" + num;
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
}
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style>
		table { width:680px; text-align:center; }
		th	  { width:100px; background-color:cyan; }
		input[type=text], textarea { width:100%; }
	</style>
<title>글쓰기</title>
</head>
<body>

<form method="post" action="action="${action}">
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" maxlength="80"
						value="${msg.title}">
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="writer" maxlength="20"
						value="${msg.writer}">
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="content" rows="10">value="${msg.content}"></textarea>
			</td>
		</tr>
	</table>

	<br>
	<input type="submit" value="저장">
	<input type="button" value="취소" onclick="location.href='list.jsp'">
</form>
</body>
</html>