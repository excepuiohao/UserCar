<%@page import="com.bean.Apply"%>
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
		<table cellpadding="10" align="center" cellspacing="0" width="650px">
		<tr>
			<td bgcolor="#F7752A"><font color="white">用车申请列表</font></td>
			<td bgcolor="#F3F3F3" width="300px" colspan="3"></td>
				<td bgcolor="#F3F3F3"><a href="Apply.jsp"
					style="text-decoration:none; color:blue"><font>新增用车申请</font></a></td>
			</tr>
	</table>
		<table align="center" width="650px">
			<tr>
				<td bgcolor="#F3F3F3" align="center">申请编号</td>
				<td bgcolor="#F3F3F3" align="center">用车部门</td>
				<td bgcolor="#F3F3F3" align="center">申请车辆类型</td>
				<td bgcolor="#F3F3F3" align="center">申请用车时间</td>
				<td bgcolor="#F3F3F3" align="center">申请单状态</td>
			</tr>
			<%
				List<Apply> list = (List) session.getAttribute("list");
				if (list != null) {
					for (Apply apply : list) {
			%>

			<tr>
				<td bgcolor="#F3F3F3" align="center"><%=apply.getApp_id()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=apply.getEmp_mech()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=apply.getCar_type()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=apply.getApp_usetime()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=apply.getApp_status()%></td>
			</tr>
			<%
				}
				}
			%>
		</table>
</body>
</html>