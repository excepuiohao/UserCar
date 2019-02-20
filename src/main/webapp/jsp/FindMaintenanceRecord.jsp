<%@page import="com.bean.Maintenance"%>
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
<td>车辆保养记录</td>
</tr>
<form action="findMaintenanceById" method="post">
<tr>
<td colspan="12">
		按车牌号码查询:<input type="text" placeholder="请输入车牌号码" name="car_id" />
		<input type="submit" value="查询" />
</td>
</tr>
</form>
<tr>
<td width="150px">保养单号</td>
<td width="150px">车牌号码</td>
<td width="150px">申请人</td>
<td width="150px">保养费用</td>
<td width="150px">保养时间</td>
<td width="150px">保养项目</td>
<td width="150px">备注</td>
<td width="150px">保养地点</td>
<td width="150px">审批状态</td>
<td width="300px" colspan="2" align="center">具体操作</td>
<td width="150px">保养状态</td>
</tr>

<%List<Maintenance> list=(List<Maintenance>)session.getAttribute("maintenance_list"); 
if(list!=null){
	for(int i=0;i<list.size();i++){
%>

<tr>
<td><%=list.get(i).getMaa_id() %></td>
<td><%=list.get(i).getCar_id() %></td>
<td><%=list.get(i).getDri_id() %></td>
<td><%=list.get(i).getMaa_money() %></td>
<td><%=list.get(i).getMaa_time() %></td>
<td><%=list.get(i).getMaa_projects() %></td>
<td><%=list.get(i).getMaa_remark() %></td>
<td><%=list.get(i).getMaa_garage() %></td>
<td><%=list.get(i).getMaa_status() %></td>
<td>
<form action="approvedMaintenance" method="post">
<input type="submit" value="审批通过">
<input type="hidden" name="maa_id" value="<%=list.get(i).getMaa_id() %>">
<input type="hidden" name="car_id" value="<%=list.get(i).getCar_id() %>">
</form>

</td>
<td>
<form action="refuseMaintenance" method="post">
<input type="submit" value="审批不通过">
<input type="hidden" name="maa_id" value="<%=list.get(i).getMaa_id() %>">
</td></form>
<td>
<form action="completeMaaCar" method="post">
<input type="submit" value="保养完成">
<input type="hidden" name="maa_id" value="<%=list.get(i).getMaa_id() %>">
<input type="hidden" name="car_id" value="<%=list.get(i).getCar_id() %>">

</form>
</td>
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