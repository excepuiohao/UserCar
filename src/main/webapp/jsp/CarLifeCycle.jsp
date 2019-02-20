<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
<tr><td colspan="6">
车辆生命周期
</td></tr>

<tr>
<td width="200px">车牌号码</td>
<td width="200px">派单次数</td>
<td width="200px">维修次数</td>
<td width="200px">维修金额</td>
<td width="200px">保养次数</td>
<td width="200px">保养金额</td>
<td width="200px">加油金额</td>
</tr>

<tr>
<td>${car_id}</td>
<td>${sendorderTimes}</td>
<td>${maintainTimes }</td>
<td>  ￥  ${maintainMoney }</td>
<td>${maintenanceTimes }</td>
<td>  ￥  ${maintenanceMoney }</td>
<td>  ￥  ${refuelingMoney}</td>
</tr>

<tr>
<td colspan="6" align="center">
<a href="scrappedCar?car_id=${car_id}">报废此车</a>
<a href="CarManager.jsp">返回</a>
</td></tr>
</table>

</body>
</html>