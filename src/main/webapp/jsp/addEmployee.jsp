<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8">
<title>员工信息录入</title>
</head>
<body>
	<form action="insertEmployee" method="post">
	<table cellpadding="10" align="center" cellspacing="0" width="630px">
		<tr>
			<td bgcolor="#F7752A" style="width: 100px"><font color="white">员工信息录入</font></td>
			<td bgcolor="#DCDCDC"></td>
		</tr>
	</table>
		<table align="center" cellspacing="10px" cellpadding="5px" width="650px">
			<tr>
				<td width="80px" bgcolor="#E9E9E9" align="right"><b>姓名:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_name"> <font color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>性别:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_sex"></td>
			</tr>
			<tr>
				<td width="80px" bgcolor="#E9E9E9" align="right"><b>部门:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_mech"><font color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>菜单角色:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_role"><font color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>登录名:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_login"><font color="red" size="1">必填</font></td>
				<td bgcolor="#E9E9E9" align="right"><b>密码:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_password"><font color="red" size="1">必填</font></td>
			</tr>
			<tr>
				<td width="80px" bgcolor="#E9E9E9" align="right"><b>手机号码:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_phone"></td>
				<td bgcolor="#E9E9E9" align="right"><b>email:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text"
					name="emp_email"></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>出生日期:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="Date" name="emp_birthday"></td>
				<td bgcolor="#E9E9E9" align="right"><b>政治面貌:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text" name="emp_polotics"></td>
			</tr>
			<tr>
				<td bgcolor="#E9E9E9" align="right"><b>家庭住址:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" type="text" name="emp_address"></td>
				<td bgcolor="#E9E9E9" align="right"><b>照片:</b></td>
				<td bgcolor="#E9E9E9"><input style="width: 150px" style="width: 120px" type="text"
					name="emp_photo"></td>
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

