<%@page import="com.bean.Employee"%>
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
<form action="selectEmployeeByName">
		<table cellpadding="10" align="center" cellspacing="0" width="650px">
			<tr>
				<td bgcolor="#F7752A" height="16px"><font color="white">用户列表</font></td>
				<td bgcolor="#F3F3F3" width="300px"><input type="text" name="emp_name"><input type="submit" value="查询"></td>
				<td bgcolor="#F3F3F3"><a href="addEmployee.jsp"
					style="text-decoration: none; color: blue"><font>新增用户</font></a></td>
			</tr>
		</table>
		<table align="center" width="650px">
			<tr>
				<td bgcolor="#F3F3F3" align="center" width="100px">用户编号</td>
				<td bgcolor="#F3F3F3" align="center" width="70px">所属部门</td>
				<td bgcolor="#F3F3F3" align="center" width="100px">姓名</td>
				<td bgcolor="#F3F3F3" align="center" width="100px">菜单角色</td>
				<td bgcolor="#F3F3F3" align="center" width="80px">手机号码</td>
				<td bgcolor="#F3F3F3" align="center" width="146px">操作</td>
			</tr>
			<%
				List<Employee> list = (List) session.getAttribute("list");
				if (list != null) {
					for (Employee emp : list) {
			%>

			<tr>
				<td bgcolor="#F3F3F3" align="center"><%=emp.getEmp_id()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=emp.getEmp_mech()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=emp.getEmp_name()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=emp.getEmp_role()%></td>
				<td bgcolor="#F3F3F3" align="center"><%=emp.getEmp_phone()%></td>
				<td bgcolor="#F3F3F3" align="center"><a
					href="selectEmployeeByempId?emp_id=<%=emp.getEmp_id()%>">修改</a></td>

			</tr>
			<%
				}
				}
			%>
		</table></form>
</body>
</html>