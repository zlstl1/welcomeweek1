<%@page import="kr.co.bit.day3.Data"%>
<%@page import="java.util.*"%>
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
	List<Data> list = (ArrayList)session.getAttribute("list");
%>
<table>
<tr>
	<td>학번</td><td>이메일</td><td>국어</td><td>영어</td><td>수학</td><td>과학</td><td>국사</td><td>총점</td><td>담임코드</td><td>성취도</td><td>지역</td>
</tr>
<%
	
	for(int i=0;i<list.size();i++){
%>
<tr>
		<td><%=list.get(i).getClassno()%><td>
		<td><%=list.get(i).getEmail()%><td>
		<td><%=list.get(i).getKor()%><td>
		<td><%=list.get(i).getEng()%><td>
		<td><%=list.get(i).getMath()%><td>
		<td><%=list.get(i).getSi()%><td>
		<td><%=list.get(i).getHi()%><td>
		<td><%=list.get(i).getTotal()%><td>
		<td><%=list.get(i).getTea()%><td>
		<td><%=list.get(i).getGet()%><td>
		<td><%=list.get(i).getLocal()%><td>
<tr>
<%
	}
%>
</table>
		
</body>
</html>