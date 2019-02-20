<%@page import="com.bean.Apply"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<body>
	<table cellpadding="10" align="center" cellspacing="0">
		<tr>
			<td bgcolor="#F7752A"><font color="white">修改申请记录</font></td>
			<td bgcolor="#DCDCDC" width="520px"></td>
		</tr>
	</table>
		<%
				Apply apply = (Apply) session.getAttribute("apply");
		System.out.print(apply);
			%>
	<form action="updateByappId?app_id=${apply.getApp_id()}" method="post">
		<table align="center" cellspacing="10px" cellpadding="5px">
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车人编号:</b></td>
				<td bgcolor="#E9E9E9"><input type="hidden" value="<%=apply.getApp_id() %>" name="app_id"><input type="text" value="<%=apply.getEmp_id() %>" name="emp_id">
					<font color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>用车人电话:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" value="<%=apply.getEmp_phone() %>" name="emp_phone"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车部门:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" value="<%=apply.getEmp_mech() %>" name="emp_mech"><font
					color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>车辆类型:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" value="<%=apply.getCar_type() %>" name="car_type"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>随车人数:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" value="<%=apply.getApp_count()%>" name="app_count"></td>
				<td bgcolor="#E9E9E9" align="right"><b>车辆颜色:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" value="<%=apply.getCar_color() %>" name="car_color"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>始 发 地:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text" value="<%=apply.getApp_beginplace() %>"
					style="width: 495px" name="app_beginplace"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>途&nbsp;&nbsp;径:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text" value="<%=apply.getApp_route() %>"
					style="width: 495px" name="app_route"></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>目 的 地:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text" value="<%=apply.getApp_lastplace() %>"
					style="width: 495px" name="app_lastplace"><font color="red"
					size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车时间:</b></td>
				<td bgcolor="#E9E9E9"><input type="Date" value="<%=apply.getApp_usetime() %>" name="app_usetime"><font
					color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>估计用时(小时):</b></td>
				<td bgcolor="#E9E9E9"><input type="text" value="<%=apply.getApp_duration() %>" name="app_duration"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车事由:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text" value="<%=apply.getApp_reason() %>"
					style="width: 495px; height: 35px" name="app_reason"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>备&nbsp;&nbsp;注:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text" value="<%=apply.getApp_remarks() %>"
					style="width: 495px; height: 35px" name="app_remarks"></td>
			</tr>
		</table>
		<table align="center" cellpadding="0" cellspacing="00">
			<tr>
				<td align="center" width="100px"><input type="submit"
					value="提交"
					style="color: yellow; background: red; width: 100px; height: 30px"></td>
				<td width="50px"></td>
				<td align="center" width="100px"><input type="reset" value="重置"
					style="color: yellow; background: red; width: 100px; height: 30px"></td>
			</tr>
		</table>
	</form>
</body>
</html>