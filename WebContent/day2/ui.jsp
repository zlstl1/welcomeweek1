<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UI</title>
</head>
<body>
<form action="ui_data.jsp" method="post">
	Q1. 가장 자신있는 언어는?<br>
	<input type="radio" name="r1" value="Java"> Java
	<input type="radio" name="r1" value="C#"> C#
	<input type="radio" name="r1" value="C++"> C++
	<input type="radio" name="r1" value="Python"> Python <br>
	
	<input type="checkbox" name="hobby" value="Coding"> Coding
	<input type="checkbox" name="hobby" value="Modeling"> Modeling
	<input type="checkbox" name="hobby" value="Testing"> Testing
	<input type="checkbox" name="hobby" value="Maintance"> Maintance <br>
	
	<select name="month">
		<option value="v0">월 선택
		<option value="v1">1
		<option value="v2">2
		<option value="v3">3
		<option value="v4">4
		<option value="v5">5
		<option value="v6">6
		<option value="v7">7
		<option value="v8">8
		<option value="v9">9
		<option value="v10">10
		<option value="v11">11
		<option value="v12">12
	</select> <br>
	
	<textarea rows="5" cols="80" name="comment">Hello!</textarea>
	
	<br>
	<input type="submit" value="전송">
</form>
</body>
</html>