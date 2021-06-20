<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% page import="java.sql.*" %>
    
    <%
    //지정된 글 번호 얻기
    int num = Integer.parseInt(request.getParameter("num"));
    
    //지정된 글 번호의 레코드를 DB에서 삭제
    Class.forNmae("org.mariadb.jdbc.Driver");
    try (
    		Connection conn = DriverManager.getConnetion();
    		Statement stmt = conn.createStatement();
    		)
    {
    	//쿼리 실행
    	stmt.executeUpdate("delete from board where num=" + num);
    	
    }catch(Exception e) {
    	e.printStackTrace();
    }
    
    //목록 화면으로 가기
    response.sendRedirect("list.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>