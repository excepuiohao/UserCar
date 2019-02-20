<%@page import="java.util.List"%>
<%@page import="com.service.impl.CarManagerServiceImpl"%>
<%@page import="com.dao.CarManagerDao"%>
<%@page import="com.bean.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">


</script>
<title>Insert title here</title>
</head>
<body>

	<form action="findCarByStatus" method="post">
		按车辆状态查询:
 		<select name="car_status">
 		<c:forEach items="${status_list}" var="list">
		<option>${list}</option>
		</c:forEach>
		</select> 
		<input type="submit" value="查询" />
	</form>
	<table>
		<tr>
			<td colspan="9">查询列表</td>
<!-- 			<td align="right"><a href="fristInsertCar">新增</a>
			</td> -->
		</tr>

		<tr>
			<td width="150px">车牌号码</td>
			<td width="150px">车辆颜色</td>
			<td width="150px">车牌颜色</td>
			<td width="150px">所属车队</td>
			<td width="150px">车辆类型</td>
			<td width="150px">车辆状态</td>
			<td colspan="3" width="450px" align="center">查看</td>
		</tr>

		  <%
			List<Car> list = (List<Car>) session.getAttribute("car_list");
			if (list != null) {
				for (int i = 0; i < list.size(); i++) {
		%> 

		<tr>
 			<td><%=list.get(i).getCar_id()%></td>
			<td><%=list.get(i).getCar_color()%></td>
			<td><%=list.get(i).getCar_ccolor()%></td>
			<td><%=list.get(i).getCar_fleet()%></td>
			<td><%=list.get(i).getCar_type()%></td>
			<td><%=list.get(i).getCar_status()%></td> 


			<td>
			<form action="findCarById" method="post">
			<input type="submit" value="车辆具体信息">
			<input type="hidden" name="car_id" value="<%=list.get(i).getCar_id()%>">
			</form>
			</td>
			<td>
			<form action="findCarLifeCycle" method="post">
			<input type="submit" value="车辆生命周期">
            <input type="hidden" name="car_id" value="<%=list.get(i).getCar_id()%>">			
			</form>
			
			</td>
			<td>
			<form action="findSendorderByCarId" method="post">
			<input type="submit" value="车辆派单记录">
			<input type="hidden" name="car_id" value="<%=list.get(i).getCar_id()%>">
			</form>
			</td>
		</tr>
 		<%
			}}
		%> 

	</table>


</body>
</html>