<%@page import="com.bean.Refueling"%>
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

<table>
<tr>
<td>车辆加油记录</td>
</tr>
<form action="findRefuelingById" method="post">
<tr>
<td colspan="12">
		按车牌号码查询:<input type="text" placeholder="请输入车牌号码" name="car_id" />
		<input type="submit" value="查询" />
</td>
</tr>
</form>
<tr>
<td width="150px">加油单号</td>
<td width="150px">车牌号码</td>
<td width="150px">申请人</td>
<td width="150px">付款方式</td>
<td width="150px">金额</td>
<td width="150px">单价</td>
<td width="150px">加油时间</td>
<td width="150px">加油量</td>
<td width="150px">当前里程</td>
</tr>
<%List<Refueling> list=(List<Refueling>)session.getAttribute("refueling_list");
if(list!=null){
	for(int i=0;i<list.size();i++){
%>

<tr>
<td><%=list.get(i).getRef_id() %></td>
<td><%=list.get(i).getCar_id() %></td>
<td><%=list.get(i).getDri_id() %></td>
<td><%=list.get(i).getRef_payment() %></td>
<td><%=list.get(i).getRef_money() %></td>
<td><%=list.get(i).getRef_unitprice() %></td>
<td><%=list.get(i).getRef_time() %></td>
<td><%=list.get(i).getRef_quantity() %></td>
<td><%=list.get(i).getRef_nowkm() %></td>
</tr>
<%}} %>
<tr>
<td colspan="12" align="center">
<a href="">返回</a>
</td>
</tr>
</table>

</body>
</html>