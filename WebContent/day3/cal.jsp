<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	thead{
		font-size:25px; 
		text-align:center;
	}
	#sun{
		color:red;
	}
	tbody{
		text-align:center;
		font-style:bold;
	}
	table{
		width:300px;
		border-collapse:collapse;
		border :1px solid black; 
	}
	td{
		border :1px solid black; 
	}
	
</style>
</head>
<body>
<%
	String month = request.getParameter("months");
	String year = request.getParameter("years");
	int imonth = Integer.parseInt(month);
	int iyear = Integer.parseInt(year);
	
	Calendar cal = Calendar.getInstance();
	cal.set(iyear,imonth-1,1);
	
	int day = 1;
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int space = cal.get(Calendar.DAY_OF_WEEK)-1;
	int count = space;
%>

<table>
<thead>
<tr>
<th colspan="7"><%=year%>년 <%=month%>월</th>
</tr>
</thead>
<tbody>
<tr>
	<td id="sun">일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
</tr>
</tbody>
<tfoot>
<%	
	for(int i=0;i<5;i++){
		out.print("<tr>");
		for(int j=1;j<=7;j++){
			if(count!=0){
				out.print("<td></td>");
				count--;
			}
			else if((day+space)%7==1){
				out.print("<td id=\"sun\">"+day+"</td>");
				day++;
			}
			else if(day<=lastDay){
				out.print("<td>"+day+"</td>");
				day++;
			}else{
				out.print("<td></td>");
			}
		}
		out.print("</tr>");
	}
%>
</tfoot>

</table>

</body>
</html>