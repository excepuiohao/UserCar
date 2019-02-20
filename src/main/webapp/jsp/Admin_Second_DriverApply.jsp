<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车辆信息</title>
<link type="text/css" rel="stylesheet"
	href="css/Admin_Second_Navigation.css" />
	<link href="<c:url value="/css/Admin_Second_Navigation.css"/>" rel="stylesheet">
</head>
<body>
	<!--左侧导航栏 标题-->
	<div id="div1">
		<div id="div2">
			<div style="position: relative; top: 5px; left: 5px">
				<font size="+2" color="#FFFFFF">驾驶员</font>
			</div>
		</div>
	</div>
	<div id="div3"></div>
	<div style="position: relative; top: -20px; left: -530px">
		<hr color="#007FCB" width="190px" />
	</div>
	</div>
	<!--导航栏-->
	<div id="div4">
		<ul>
			<li><a href="findAllCar"  target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★查看车辆信息</b></font>
					</div></a></li>
			<li><a href="findAllMaintain" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★车辆维修记录</b></font>
					</div></a></li>
			<li><a href="findAllMaintenance" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★车辆保养记录</b></font>
					</div></a></li>
			<li><a href="findAllRefueling" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★车辆加油记录</b></font>
					</div></a></li>
			<li><a href="fristInsertCar" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★新增车辆信息</b></font>
					</div></a></li>
		</ul>
	</div>
	<!--导入-->
	<div id="div5">
		<iframe scrolling="auto" rameborder="0" src="findAllCar"
			name="CarMassage" width="100%" height="100%"></iframe>
	</div>
</body>
</html>