<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	아이돌 그룹 투표
	1. 레드벨벳  2. 트와이스, 3. 빅뱅 4. 워너원 5. BTS
 -->
 <form action="../day2/vote.jsp" method="get">
 	<input type="radio" value="0" name="idol"> 레드벨벳 <br>
 	<input type="radio" value="1" name="idol"> 트와이스 <br>
 	<input type="radio" value="2" name="idol"> 빅뱅 <br>
 	<input type="radio" value="3" name="idol"> 워너원 <br>
 	<input type="radio" value="4" name="idol"> BTS <br>
 	<input type="submit" value="투표">
 </form>
</body>
</html>