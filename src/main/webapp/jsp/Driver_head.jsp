<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户</title>
<link type="text/css" rel="stylesheet" href="css/User_head.css" />
<link href="<c:url value="/css/User_head.css"/>" rel="stylesheet">
</head>
<body>
	<!-- 大的背景色-->
	<div id="background">
		<!--页眉-->
		<header>
		<table height="80px" width="1550px">
			<tr>
				<td class="rightborder" align="center"><a href="Driver_Second_Lift.jsp"
					target="right"><div id="div01">
							<img src="../img/SystemFirst.png" /> <br /> <font>系统首页</font>
						</div> </a></td>
				<td class="rightborder" align="center"><a href="Driver_Second_Lift.jsp" target="right">
						<div>
							<img src="../img/CarDispatching.png" /> <br /> <font>车辆调度</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="" target="right">
						<div>
							<img src="../img/SystemAdmin.png" /> <br /> <font>系统管理</font>
						</div>
				</a></td>
				<td width="800px"></td>
				<td width="400px"><font size="+2">无锡市公务用车信息化管理平台</font></td>
				</td>
			</tr>

		</table>

		</header>
		<!--小三角-->
		<div id="div2"></div>
		<div id="div1">
			<font color="#FFFFFF">当前用户：（${driver.getDri_name() }）</font> &nbsp;&nbsp; <a href="DriverLogin.jsp">退出系统</a>
		</div>
		<!--空白的-->
		<div id="div3">
			<iframe scrolling="auto" rameborder="0" src="Driver_Second_Lift.jsp"
				name="right" width="100%" height="100%"></iframe>

		</div>
	</div>
</body>
</html>