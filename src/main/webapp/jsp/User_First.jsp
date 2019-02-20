<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户的第一页</title>
<link type="text/css" rel="stylesheet" href="css/User_First.css" />
<link href="<c:url value="/css/User_First.css"/>" rel="stylesheet">
</head>
<body>
	<!--个人信息-->
	<div id="div4">
		<div id="div5">
			<div style="position: relative; top: 5px; left: 5px">
				<font size="+2" color="#FFFFFF">个人信息</font>
			</div>
		</div>
		<div id="div6"></div>
		<div style="position: relative; top: -50px">
			<hr color="#007FCB" />
		</div>
	</div>
	
			
	<!--管理员信息-->
	<div id="div7">
		<img id="img1" src="../img/Admin2.png" />
		<div id="div8">
			<table>
				<tr>
					<td><font size="+2"> </font></td>
				</tr>
				<tr>
					<td><font size="+2">${emp.getEmp_name()}<br>欢迎登录!</font></td>
				</tr>
				<tr>
					<td><a href="changeEmployee.jsp"><div align="center" id="font1">
								<font color="#FFFFFF">修改密码</font>
								<div></a></td>
				</tr>
			</table>
		</div>
		<div id="div9">
			<table id="table1">
				<tr>
					<td><font size="+2">部门：(${emp.getEmp_mech()})</font></td>
				</tr>
				<tr>
					<td><font size="+2">角色：(${emp.getEmp_role()})</font></td>
				</tr>
				<%Date date = new Date();SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); %>
				<tr>
					<td><font size="+2">登录时间：(<%=sf.format(date) %>)</font></td>
				</tr>
			</table>
		</div>
		<div id="diviframe">
			<iframe scrolling="auto" rameborder="0" src="User_Second.jsp"
				name="right" width="100%" height="100%"></iframe>
		</div>
</body>
</html>