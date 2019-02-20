<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<font color="red">${cue}</font>
<sf:form modelAttribute="sendorder" action="insertSendOrder">
<table>
<tr><td>派车单号:</td><td><sf:input path="send_id"/><sf:errors cssStyle="color:red" path="send_id"></sf:errors></td></tr>
<tr><td>申请单号:</td><td><sf:input path="app_id"/></td></tr>
<tr><td>车牌号:</td><td><sf:input path="car_id"/><sf:errors cssStyle="color:red" path="car_id"></sf:errors></td></tr>
<tr><td>驾驶员:</td><td><sf:input path="dri_id"/></td></tr>
<tr><td>审批人:</td><td><sf:input path="adm_id"/><sf:errors cssStyle="color:red" path="adm_id"></sf:errors></td></tr>
<tr><td><button type="submit" style="width: 100px">确认派车</button></td><td><button type="reset" style="width: 100px">重置</button></td></tr>
</table>
</sf:form>
</center>
</body>
</html>