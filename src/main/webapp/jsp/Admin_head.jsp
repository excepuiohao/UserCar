<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员</title>
<link href="<c:url value="/css/Admin_head.css"/>" rel="stylesheet">
</head>
<body>
	<!-- 大的背景色-->
	<div id="background">
		<!--页眉-->
		<header>
		<table height="80px" width="1550px">
			<tr>
				<td class="rightborder" align="center"><a href="Admin_First.jsp"
					target="right"><div id="div01">
							<img src="../img/SystemFirst.png" /> <br /> <font>系统首页</font>
						</div> </a></td>
				<td class="rightborder" align="center"><a href="" target="right">
						<div>
							<img src="../img/CarMassage.png" /> <br /> <font>车辆信息</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="Admin_Second_Driver.jsp" target="right">
						<div>
							<img src="../img/Driver.png" /> <br /> <font>驾驶员管理</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="" target="right">
						<div>
							<img src="../img/Map.png" /> <br /> <font>位置服务</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="" target="right">
						<div>
							<img src="../img/Safe.png" /> <br /> <font>安全监管</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="Admin_Second_Navigation.jsp" target="right">
						<div>
							<img src="../img/CarAdmin.png" /> <br /> <font>车辆管理</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="Admin_Second_Dispatch.jsp" target="right">
						<div>
							<img src="../img/CarDispatching.png" /> <br /> <font>车辆调度</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="" target="right">
						<div>
							<img src="../img/OperationAnalysis.png" /> <br /> <font>运营分析</font>
						</div>
				</a></td>
				<td class="rightborder" align="center"><a href="" target="right">
						<div>
							<img src="../img/SystemAdmin.png" /> <br /> <font>系统管理</font>
						</div>
				</a></td>
				<td width="400px"></td>
				<td width="400px"><font size="+2">无锡市公务用车信息化管理平台</font></td>
				</td>
			</tr>

		</table>

		</header>
		<!--小三角-->
		<div id="div2"></div>
		<div id="div1">
			<font color="#FFFFFF">当前用户：（${adm.getEmp_name()}）</font> &nbsp;&nbsp; <a href="ManagerLogin.jsp">退出系统</a>
		</div>
		<!--空白的-->
		<div id="div3">
			<iframe scrolling="auto" rameborder="0" src="Admin_First.jsp" name="right"
				width="100%" height="100%"></iframe>

		</div>
	</div>
</body>
</html>