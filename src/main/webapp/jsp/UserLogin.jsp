<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link rel="stylesheet" href="../css/UserLogin.css" />
<script type="text/javascript" src="Car.js"></script>
</head>
<body>
	<div id="alldiv">
		<img src="/img/loginback04.jpg" width="100%" height="850px" />
		<div id="div3">
			<b>公务用车网</b>
		</div>
		<div id="l_div1">
			<form action="employeeLogin">
				<table id="l_table1" cellpadding="-10px">
					<tr>
						<th colspan="2" align="center" id="l_th1">用户登录</th>
					</tr>
					<tr>
						<td colspan="2" align="center"><input name="emp_id"
							class="l_input1" type="text" placeholder="请填写用户名" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input name="emp_pass"
							class="l_input1" type="text" placeholder="请填写密码" /></td>
					</tr>
					<tr>
						<td align="center"><input type="text" id="l_input2"
							name="code" placeholder="请填写右侧的验证码"
							data-validate="required:请填写右侧的验证码" /></td>
						<td><img src="../img/passcode.jpg" alt="" width="105px"
							height="39" class="passcode"
							style="height: 39px; cursor: pointer;"></td>
					</tr>
					<tr>
						<th colspan="2" align="center"><button id="l_button1"
								type="submit">
								<font id="l_font1">登录</font>
							</button></th>
					</tr>
					<tr>
						<td colspan="2" align="right"><font class="l_font4">忘记密码</font></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>