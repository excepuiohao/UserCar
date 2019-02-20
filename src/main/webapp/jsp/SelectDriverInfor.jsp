<%@page import="com.bean.Driver"%>
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
		Driver driver = (Driver) session.getAttribute("driver");
	%>
	<table>
		<tr>
			<td>工号：</td>
			<td><%=driver.getDri_id()%></td>
		</tr>
		<tr>
			<td>性别</td>
			<td><%=driver.getDri_sex()%></td>
		</tr>
		<tr>
			<td>手机号码：</td>
			<td><%=driver.getDri_phone()%></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><%=driver.getDri_name()%></td>
		</tr>
		<tr>
			<td>身份证号：</td>
			<td><%=driver.getDri_identity()%></td>

		</tr>
		<tr>
			<td>EMAIL：</td>
			<td><%=driver.getDri_email()%></td>

		</tr>
		<tr>
			<td>密码：</td>
			<td><%=driver.getDri_password()%></td>

		</tr>
		<tr>
			<td>政治面貌：</td>
			<td><%=driver.getDri_polotics()%></td>

		</tr>
		<tr>
			<td>出生日期：</td>
			<td><%=driver.getDri_birthday()%></td>

		</tr>
		<tr>
			<td>家庭住址：</td>
			<td><%=driver.getDri_address()%></td>

		</tr>
		<tr>
			<td>照片：</td>
			<td><%=driver.getDri_photo()%></td>

		</tr>
		<tr>
			<td>驾驶证号：</td>
			<td><%=driver.getDri_licensenum()%></td>

		</tr>
		<tr>
			<td>领证时间：</td>
			<td><%=driver.getDri_getlicensetime()%></td>

		</tr>
		<tr>
			<td>准驾车型：</td>
			<td><%=driver.getDri_carstyle()%></td>

		</tr>
		<tr>
			<td>驾龄：</td>
			<td><%=driver.getDri_diverage()%></td>
		<tr>
			<td>发证机关：</td>
			<td><%=driver.getDri_lia()%></td>

		</tr>
		<tr>
			<td>合同有效期：</td>
			<td><%=driver.getDri_toc()%></td>

		</tr>
		<tr>
			<td>换证提醒天数：</td>
			<td><%=driver.getDri_hzday()%></td>


		</tr>
		<tr>
			<td>驾驶员类型：</td>
			<td><%=driver.getDri_type()%></td>

		</tr>
		<tr>
			<td>驾驶员状态：</td>
			<td><%=driver.getDri_status()%></td>

		</tr>
		<tr>
			<td>驾照有效期限：</td>
			<td><%=driver.getDri_validperiod()%></td>

		</tr>
		<tr>
			<td>所属车队：</td>
			<td><%=driver.getDri_fleet()%></td>

		</tr>
		<tr>
			<td>备注：</td>
			<td><%=driver.getDri_remarks()%></td>
		</tr>
	</table>
</body>
</html>