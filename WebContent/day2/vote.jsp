<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.per{
	text-align: right;
	}
</style>
</head>
<body>
<%!
	int[] votes = null;
	public void jspInit(){
		votes = new int[5];
		System.out.println("jsp instance create");
	}
	
	public void jspDestroy(){
		System.out.println("jsp instance destroy");
		System.out.println("resource free");
	}
%>

<%
	int total=0;																																																																																														
	String value = request.getParameter("idol");
	if(value.equals("0")){
		votes[0]++;
	}else if(value.equals("1")){
		votes[1]++;
	}else if(value.equals("2")){
		votes[2]++;
	}else if(value.equals("3")){
		votes[3]++;
	}else if(value.equals("4")){
		votes[4]++;
	}	
	for(int i=0;i<4;i++){
		total+=votes[i];
	}
%>
<table>
	<tr><td>Q1.</td><td>아이돌 그룹 득표수</td><td></td><td></td></tr>
	<tr><td>1.</td><td>레드벨벳</td><td><%=votes[0]%></td><td class="per"><%=(double)votes[0]/total*100%>%</td></tr>
	<tr><td>2.</td><td>트와이스</td><td><%=votes[1]%></td><td class="per"><%=(double)votes[1]/total*100%>%</td></tr>
	<tr><td>3.</td><td>빅뱅</td><td><%=votes[2]%></td><td class="per"><%=(double)votes[2]/total*100%>%</td></tr>
	<tr><td>4.</td><td>워너원</td><td><%=votes[3]%></td><td class="per"><%=(double)votes[3]/total*100%>%</td></tr>
	<tr><td>5.</td><td>BTS</td><td><%=votes[4]%></td><td class="per"><%=(double)votes[4]/total*100%>%</td></tr>
</table>
<a href="../day3/logout.jsp">로그아웃</a>

</body>
</html>