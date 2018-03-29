<%@page import="java.util.Arrays"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>달력</title>
<style type="text/css">
	.sun {
		color : red;
	}
	
	.sat {
		color : blue;
	}
	
	table {
		width: 200px;
		border-collapse: collapse;
		border : 1px solid black;
		text-align: center;
	}
	td {
		border : 1px solid black;
	}
</style>
</head>
<body>
<%
	String[] days = new String[42];
	Arrays.fill(days, "");
	int year = Integer.parseInt(request.getParameter("years"));
	int month = Integer.parseInt(request.getParameter("months"));
	
	Calendar cal = Calendar.getInstance();
	
	year = year==0?cal.get(Calendar.YEAR):year;
	month = month==0?cal.get(Calendar.MONTH)+1:month;
	
	cal.set(year,month-1,1);
	
	int day = 1;
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);// cal로 부터 취득
	int space = cal.get(Calendar.DAY_OF_WEEK)-1; // cal로 부터 취득
	////
	for(int i=0;i<lastDay;i++) {
		days[space+i] = String.valueOf(day++);
	}
	
%>
<table>
	<tr><td colspan="7"><%=year%>년 <%=month%>월</td></tr>
	<tr><td class="sun">일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td class="sat">토</td></tr>
	<tr><td class="sun"><%=days[0]%></td><td><%=days[1]%></td><td><%=days[2]%></td><td><%=days[3]%></td><td><%=days[4]%></td><td><%=days[5]%></td><td class="sat"><%=days[6]%></td></tr>
	<tr><td class="sun"><%=days[7]%></td><td><%=days[8]%></td><td><%=days[9]%></td><td><%=days[10]%></td><td><%=days[11]%></td><td><%=days[12]%></td><td class="sat"><%=days[13]%></td></tr>		
	<tr><td class="sun"><%=days[14]%></td><td><%=days[15]%></td><td><%=days[16]%></td><td><%=days[17]%></td><td><%=days[18]%></td><td><%=days[19]%></td><td class="sat"><%=days[20]%></td></tr>
	<tr><td class="sun"><%=days[21]%></td><td><%=days[22]%></td><td><%=days[23]%></td><td><%=days[24]%></td><td><%=days[25]%></td><td><%=days[26]%></td><td class="sat"><%=days[27]%></td></tr>	
	<tr><td class="sun"><%=days[28]%></td><td><%=days[29]%></td><td><%=days[30]%></td><td><%=days[31]%></td><td><%=days[32]%></td><td><%=days[33]%></td><td class="sat"><%=days[34]%></td></tr>	
	<%if(space==6){%>
	<tr><td class="sun"><%=days[35]%></td><td><%=days[36]%></td><td><%=days[37]%></td><td><%=days[38]%></td><td><%=days[39]%></td><td><%=days[40]%></td><td class="sat"><%=days[41]%></td></tr>	
	<%}%>
</table>
</body>
</html>




