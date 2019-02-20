<%@page import="com.bean.UseCarRecord"%>
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
	<table cellpadding="10" align="center" cellspacing="0" width="700px">
		<tr>
			<td bgcolor="#F7752A"><font color="white">个人用车记录列表</font></td>
			<td bgcolor="#F3F3F3" width="400px" colspan="6"></td><td bgcolor="#F3F3F3"><a href="Apply.jsp"
					style="text-decoration:none; color:blue"><font>新增用车申请</font></a></td>
		</tr>
	</table>
	<table align="center" width="700px">
		<tr>
			<td bgcolor="#F3F3F3" align="center" width="100px">申请编号</td>
			<td bgcolor="#F3F3F3" align="center" width="100px">申请人编号</td>
			<td bgcolor="#F3F3F3" align="center" width="100px">用车部门</td>
			<td bgcolor="#F3F3F3" align="center" width="100px">用车人电话</td>
			<td bgcolor="#F3F3F3" align="center" width="80px">车辆类型</td>
			<td bgcolor="#F3F3F3" align="center" width="100px">车牌号码</td>
			<td bgcolor="#F3F3F3" align="center" width="120px">申请用车时间</td>
			<td bgcolor="#F3F3F3" align="center" width="80px">出行状态</td>
		</tr>
		<%
			List<UseCarRecord> list = (List) session.getAttribute("list");
			if (list != null) {
				for (UseCarRecord record : list) {
		%>

		<tr>
			<td bgcolor="#F3F3F3" align="center"><%=record.getApp_id()%></td>
			<td bgcolor="#F3F3F3" align="center"><%=record.getEmp_id()%></td>
			<td bgcolor="#F3F3F3" align="center"><%=record.getEmp_mech()%></td>
			<td bgcolor="#F3F3F3" align="center"><%=record.getEmp_phone()%></td>
			<td bgcolor="#F3F3F3" align="center"><%=record.getCar_type()%></td>
			<td bgcolor="#F3F3F3" align="center"><%=record.getCar_id()%></td>
			<td bgcolor="#F3F3F3" align="center"><%=record.getApp_usetime()%></td>
			<td bgcolor="#F3F3F3" align="center"><%=record.getSend_status()%></td>
		</tr>
		<%
			}
			}
		%>
	</table>
</body>
</html>