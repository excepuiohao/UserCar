<%@page import="com.bean.Sendorder"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
<tr><td colspan="6">车辆派单记录</td></tr>


<tr>
<td width="200px" align="center">单号</td>
<td width="200px" align="center">申请单号</td>
<td width="200px" align="center">驾驶员</td>
<td width="200px" align="center">派单时间</td>
<td width="200px" align="center">派单状态</td>
</tr>
<%List<Sendorder> list=(List<Sendorder>)session.getAttribute("car_list3"); 
if (list != null) {
	for (int i = 0; i < list.size(); i++) {
%>
<tr>
<td align="center"><%=list.get(i).getSend_id() %></td>
<td align="center"><%=list.get(i).getApp_id() %></td>
<td align="center"><%=list.get(i).getDri_id() %></td>
<td align="center"><%=list.get(i).getSend_time() %></td>
<td align="center"><%=list.get(i).getSend_status() %></td>
</tr>

<%}} %>
</table>

</body>
</html>