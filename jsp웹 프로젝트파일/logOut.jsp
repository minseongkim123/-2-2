<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    session.removeAttribute("userId"  );
    session.removeAttribute("userName");
    
    response.sendRedirect("logMain.jsp"); // 메인 화면으로
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