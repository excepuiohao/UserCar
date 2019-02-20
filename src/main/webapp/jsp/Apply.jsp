<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<link type="text/css" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<body>
	<table cellpadding="10" align="center" cellspacing="0">
		<tr>
			<td bgcolor="#F7752A"><font color="white">用车申请记录</font></td>
			<td bgcolor="#DCDCDC" width="520px"></td>
		</tr>
	</table>
	<form action="insertApply" method="post">
		<table align="center" cellspacing="10px" cellpadding="5px">
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车人编号:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" name="emp_id" value="${emp.getEmp_id() }">
					<font color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>用车人电话:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" name="emp_phone" value="${emp.getEmp_phone() }"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车部门:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" name="emp_mech" value="${emp.getEmp_mech() }"><font
					color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>车辆类型:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" name="car_type"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>随车人数:</b></td>
				<td bgcolor="#E9E9E9"><input type="text" name="app_count"></td>
				<td bgcolor="#E9E9E9" align="right"><b>车辆颜色</b></td>
				<td bgcolor="#E9E9E9"><input type="text" name="car_color"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>始 发 地:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text"
					style="width: 495px" name="app_beginplace"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>途&nbsp;&nbsp;径:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text"
					style="width: 495px" name="app_route"></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>目 的 地:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text"
					style="width: 495px" name="app_lastplace" maxlength="30"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车时间:</b></td>
				<td bgcolor="#E9E9E9"><input type="Date" name="app_usetime"><font
					color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>估计用时(小时):</b></td>
				<td bgcolor="#E9E9E9"><input type="text" name="app_duration"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>用车事由:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text"
					style="width: 495px; height: 35px" name="app_reason"><font
					color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>备&nbsp;&nbsp;注:</b></td>
				<td bgcolor="#E9E9E9" colspan="3"><input type="text"
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