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
		<tr>
			<td>订单号</td>
			<td>审批人</td>
			<td>申请单号</td>
			<td>派单时间</td>
			<td>派单状态</td>
			<td>车牌号</td>
			<td>操作</td>
		</tr>

		<%
			List<Sendorder> list = (List) session.getAttribute("list");
			String opera = (String) session.getAttribute("opera");
			String op = null;
			if (opera.equals("take")) {
				op = "接单";
			}else{
				op = "完成";
			}
			if (list != null) {
				for (Sendorder sendOrder : list) {
		%>
		<tr>
			<td><%=sendOrder.getSend_id()%></td>
			<td><%=sendOrder.getAdm_id()%></td>
			<td><%=sendOrder.getApp_id()%></td>
			 <td><%=sendOrder.getSend_time()%></td> 
			<td><%=sendOrder.getSend_status()%></td>
			<td><%=sendOrder.getCar_id()%></td>
			<td><a href="<%=opera %>Order?send_id=<%=sendOrder.getSend_id()%>"><%=op %></a></td>
		</tr>
		<%
			}
			}
		%>

	</table>
</body>
</html>