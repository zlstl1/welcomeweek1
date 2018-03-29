<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Word service</title>
</head>
<body>

<h1> <!-- 여는 태그 -->
<%
	// 격언 5개를 만들어서 접속하는 클라이언트에게 하나를 선택해서 보여주는 코드 작성	
	
	int a = (int)(Math.random()*5)+1;

	switch(a){
	case 1:
		out.print("연습만이 살 길이다.");
		break;
	case 2:
		out.print("좋은말1");
		break;
	case 3:
		out.print("좋은말2");
		break;
	case 4 :
		out.print("좋은말3");
		break;
	case 5 :
		out.print("좋은말4");
		break;
	}

%>
</h1> <!-- 닫는 태그 -->

</body>
</html>