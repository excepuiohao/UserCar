<%@page import="com.bean.Maintain"%>
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
<td>车辆维修记录</td>
</tr>
<form action="findMaintainById" method="post">
<tr>
<td colspan="12">
		按车牌号码查询:<input type="text" placeholder="请输入车牌号码" name="car_id" />
		<input type="submit" value="查询" />
</td>
</tr>
</form>
<tr>
<td width="150px">维修单号</td>
<td width="150px">车牌号码</td>
<td width="150px">申请人</td>
<td width="150px">维修费用</td>
<td width="150px">送修时间</td>
<td width="150px">取车时间</td>
<td width="150px">备注</td>
<td width="150px">维修地点</td>
<td width="150px">审批状态</td>
<td width="300px" colspan="2" align="center">具体操作</td>
<td width="150px">维修状态</td>
</tr>
<%List<Maintain> list=(List<Maintain>)session.getAttribute("maintain_list");
if(list!=null){
	for(int i=0;i<list.size();i++){
%>

<tr>
<td><%=list.get(i).getMai_id() %></td>
<td><%=list.get(i).getCar_id() %></td>
<td><%=list.get(i).getDri_id() %></td>
<td><%=list.get(i).getMai_money() %></td>
<td><%=list.get(i).getMai_time() %></td>
<td><%=list.get(i).getMai_taketime() %></td>
<td><%=list.get(i).getMai_remark() %></td>
<td><%=list.get(i).getMai_garage() %></td>
<td><%=list.get(i).getMai_status() %></td>
<td>
<form action="approvedMaintain" method="post">
<input type="submit" value="审批通过">
<input type="hidden" name="mai_id" value="<%=list.get(i).getMai_id() %>">
<input type="hidden" name="car_id" value="<%=list.get(i).getCar_id() %>">
</form>

</td>
<td>
<form action="refuseMaintain" method="post">
<input type="submit" value="审批不通过">
<input type="hidden" name="mai_id" value="<%=list.get(i).getMai_id() %>">
</form>
</td>

<form action="completeMaiCar" method="post">
<td>
<input type="submit" value="维修完成">
<input type="hidden" name="mai_id" value="<%=list.get(i).getMai_id() %>">
<input type="hidden" name="car_id" value="<%=list.get(i).getCar_id() %>">
</td>
</form>

</tr>
<%}} %>
<tr><td colspan="12" align="center">
<a href="">返回</a>
</td></tr>
</table>

</body>
</html>