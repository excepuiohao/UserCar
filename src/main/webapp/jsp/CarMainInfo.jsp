<%@page import="com.bean.Car"%>
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

<%
List<Car> list=(List<Car>)session.getAttribute("car_list2");
if (list != null) {
	for (int i = 0; i < list.size(); i++) {

%>

<table cellspacing="10px">
<tr><td colspan="2">车辆基本信息</td></tr>
<tr>
<td width="400px" height="30px" bgcolor="#F3F3F3"><b>车牌号码：</b>  <%=list.get(i).getCar_id() %></td>
<td  width="400px" bgcolor="#F3F3F3"><b>所属车队：</b>   <%=list.get(i).getCar_fleet() %></td>
</tr>

<tr>
<td bgcolor="#F3F3F3" height="30px" colspan="2"><b>车辆配置：</b>  <%=list.get(i).getCar_configer() %></td>
</tr>

<tr>
<td bgcolor="#F3F3F3" height="30px"><b>省市区：</b>  <%=list.get(i).getCar_address() %></td>
<td bgcolor="#F3F3F3"><b>发证机关：</b>  <%=list.get(i).getCar_office()%></td>
</tr>

<tr>
<td bgcolor="#F3F3F3" height="30px"><b>车牌颜色：</b>  <%=list.get(i).getCar_ccolor() %></td>
<td bgcolor="#F3F3F3"><b>车牌分类：</b>  <%=list.get(i).getCar_ctype() %></td>
</tr>

<tr>
<td bgcolor="#F3F3F3" height="30px"><b>车辆颜色：</b>  <%=list.get(i).getCar_color() %></td>
<td bgcolor="#F3F3F3"><b>车辆类型：</b>  <%=list.get(i).getCar_type() %></td>
</tr>

<tr>
<td bgcolor="#F3F3F3"  height="30px"><b>初始里程：</b>  <%=list.get(i).getCar_beginkm()%></td>
<td bgcolor="#F3F3F3"><b>驾驶员：</b>  <%=list.get(i).getDri_id() %></td>
</tr>

<tr>
<td bgcolor="#F3F3F3"  height="30px"><b>车辆价格：   ￥</b><%=list.get(i).getCar_price() %></td>
<td bgcolor="#F3F3F3"><b>购车时间：</b>  <%=list.get(i).getCar_buydate()%></td>
</tr>

<tr>
<td bgcolor="#F3F3F3"  height="30px"><b>原有部门：</b>  <%=list.get(i).getCar_department() %></td>
<td bgcolor="#F3F3F3"><b>车架号：</b>  <%=list.get(i).getCar_chassis() %></td>
</tr>

<tr>
<td bgcolor="#F3F3F3"  height="30px"><b>营运证号：</b>  <%=list.get(i).getCar_operations() %></td>
<td bgcolor="#F3F3F3"><b>ETC：</b>  <%=list.get(i).getEtc() %></td>
</tr>

<tr>
<td bgcolor="#F3F3F3" colspan="2" height="30px"><b>车辆状态：</b>  <%=list.get(i).getCar_status() %></td>
</tr>
<%}} %>
</table>

</body>
</html>