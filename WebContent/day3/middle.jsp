<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>두번째 페이지</title>
</head>
<body>
<%
	String select = request.getParameter("select");
	String url = "error.jsp";
	
	if(select.equals("0")){
		String id = (String)session.getAttribute("member");
		if(id!=null){
			url="../day2/poll.jsp";
		}else {
			url="./login.jsp";
		}	
	}else if(select.equals("1")){
		url="./request_cal.jsp";
	}else if(select.equals("2")){
		url="./login.jsp";
	}
	RequestDispatcher rd = request.getRequestDispatcher(url);
	rd.forward(request,response);
	//response.sendRedirect("back.jsp");
%>

</body>
</html>