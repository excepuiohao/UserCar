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
				<font size="+2" color="#FFFFFF">车辆信息</font>
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
			<li><a href="selectByStuats1"  target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★待审核</b></font>
					</div></a></li>
			<li><a href="selectByStuats2" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★待派车</b></font>
					</div></a></li>
			<li><a href="selectByStuats3" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★待出车</b></font>
					</div></a></li>
			<li><a href="selectByStuats4" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★待完成</b></font>
					</div></a></li>
			<li><a href="Apply.jsp" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★申请用车</b></font>
					</div></a></li>
					<li><a href="selectByempId" target="CarMassage"><div class="div_color">
						<font color="#FFFFFF" size="+3"><b>★查询个人记录</b></font>
					</div></a></li>
		</ul>
	</div>
	<!--导入-->
	<div id="div5">
		<iframe scrolling="auto" rameborder="0" src="Apply.jsp"
			name="CarMassage" width="100%" height="100%"></iframe>
	</div>
</body>
</html>