<%@page import="com.bean.Order"%>
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
			<td>车牌号</td>
			<td>申请人</td>
			<td>审批人</td>
			<td>申请时间</td>
			<td>订单状态</td>
		</tr>
		<%
			List<Order> list = (List) session.getAttribute("list");
			if (list != null) {
				for (Order order : list) {
		%>
		<tr>
			<td><%=order.getId()%></td>
			<td><%=order.getCar_id()%></td>
			<td><%=order.getDri_id()%></td>
			<td><%=order.getAdm_id()%></td>
			<td><%=order.getTimes()%></td>
			<td><%=order.getStatus()%></td>
		</tr>
		<%
			}
			}
		%>
	</table>

</body>
</html>