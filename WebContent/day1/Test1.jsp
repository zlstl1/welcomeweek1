<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단 작성</title>
</head>
<body>

<%

	for(int i=1; i<=9; i++){
		for(int j=1; j<=9; j++){
			//out.print(i + " * " + j + " = " + i*j + "\t");
			out.print(String.format("%d * %d = %d&nbsp&nbsp&nbsp",i,j,i*j));
		}
		out.print("<br>");
	}

%>

</body>
</html>