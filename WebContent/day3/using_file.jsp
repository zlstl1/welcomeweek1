<%@page import="kr.co.bit.day3.Data"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
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
	String path = application.getRealPath("./WEB-INF/file/Abc1115.txt");

	List<Data> list = new ArrayList<Data>();
/* 	File file = new File(path);
	if(!file.exists()){
		out.print("파일이 없습니다.");
	} */

	FileReader fr = new FileReader(path);
	BufferedReader br = new BufferedReader(fr);
	String line = "";
	
	while(true){
		line=br.readLine();
		if(line==null){
			break;
		}
	
		Data data = new Data(line.substring(1,6),line.substring(6,10),line.substring(11,13),line.substring(14,16),line.substring(17,19),
				line.substring(20,22),line.substring(23,25),line.substring(25,28),line.substring(28,29),line.substring(29,30),line.substring(30,31));
		list.add(data);
	}	
	session.setAttribute("list", list);
	response.sendRedirect("list.jsp");
	br.close();

%>
</body>
</html>