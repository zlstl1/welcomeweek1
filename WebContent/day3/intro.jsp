<%@page import="kr.co.bit.day3.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫화면</title>
</head>
<body>
<%
	MemberVO vo = (MemberVO)session.getAttribute("member");
	if(vo!=null){
	String name = vo.getName();
	String id = vo.getId();
	String passwd = vo.getPasswd();
		out.print(name+"님 반갑습니다.");
	}
%>
</body>
</html>