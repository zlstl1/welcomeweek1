<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	input{
		text-align: center;
	
	}
	#result{
		color:red;
	}
</style>
</head>
<body>
<% 
String result = request.getParameter("result"); 
String op = "";
String num1 = "";
String num2 = "";
if(result==null){
	result = "";
}else{
	op = request.getParameter("op"); 
	num1 = request.getParameter("num1");
	num2 = request.getParameter("num2");
}
%>
<form action="cal.jsp">
	숫자 1 : <input type="text" name="val1" value="<%= num1 %>" size="5">
	연산 : <input type="text" name="op" value="<%= op %>" size="1">
	숫자 2 : <input type="text" name="val2" value="<%= num2 %>"size="5">
	결과 : <input type="text" id="result" name="result" value="<%= result %>" size="5">
	<input type="submit" value="계산">
</form>
</body>
</html>