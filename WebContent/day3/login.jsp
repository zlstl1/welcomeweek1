<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String code = request.getParameter("code");
	if(code==null){
		code = "";
	}else{
		code = code.equals("0")?"해당하는 회원이 없습니다.":"";
	}
%>
<form action="login_check.jsp" method="post">
	<input type="text" name="id"><br>
	<input type="password" name="passwd"><br>
	<input type="submit" value="로그인"><%=code%>
</form>
</body>
</html>