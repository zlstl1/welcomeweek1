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
String val1 = request.getParameter("val1");
String val2 = request.getParameter("val2");
String op = request.getParameter("op");
double num1 = Double.parseDouble(val1);
double num2 = Double.parseDouble(val2);
double result=0;

if(op.equals("+")){
	result = num1 + num2;
}else if(op.equals("-")){
	result = num1 - num2;
}else if(op.equals("*")){
	result = num1 * num2;
}else if(op.equals("/")){
	result = num1 / num2;
}
String r2 = String.format("%.2f",result);
String data = String.format("&num1=%s&op=%s&num2=%s",num1,op,num2);
response.sendRedirect("send_data3.jsp?result="+r2+data);
//out.print(result);
%>
</body>
</html>