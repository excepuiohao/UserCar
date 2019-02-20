<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/User_Second.css" />
<link href="<c:url value="/css/User_Second.css"/>" rel="stylesheet">
</head>
<body>
	<header>
    	<div id="div1"><font color="#FFFFFF" size="+3"><b>南京市公务用车管理平台</b></font></div>
        <!--小三角-->
        <div id="div2"></div>
        <hr color="#007FCB" style="position:relative; top:-50px"/>
    </header>
    <div id="div3">
    	<table cellspacing="60px">
			<tr>
				<td><a href="selectByStuats1"><img src="../img/Approve.bmp" width="180px"
						height="135px" /></a></td>
				<td><a href="selectByStuats2"><img src="../img/Dispatching.bmp" width="180px"
						height="135px" /></a></td>
				<td><a href="selectByStuats3"><img src="../img/OutCar.bmp" width="180px"
						height="135px" /></a></td>
             </tr>
             <tr>
				<td><a href="selectByStuats4"><img src="../img/Complete.bmp" width="180px"
						height="135px" /></a></td>
				<td><a href="Apply.jsp"><img src="../img/ApplyCar.bmp" width="180px"
						height="135px" /></a></td>
				<td><a href="selectByempId"><img src="../img/RecordCar.bmp" width="180px"
						height="135px" /></a></td>
			</tr>
		</table>
    </div>
</html>