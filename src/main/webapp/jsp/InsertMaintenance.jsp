<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertMaintenance">
		<table>
			<tr>
				<td><table>
						<tr>
							<td>车牌号码：</td>
							<td><input type="text" name="car_id"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>修理厂：</td>
							<td><input type="text" name="maa_garage"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table>
						<tr>
							<td>申请人：</td>
							<td><input type="text" name="dri_id"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>保养费用：</td>
							<td><input type="text" name="maa_money"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table>
						<tr>
							<td>保养时间：</td>
							<td><input type="date" name="maa_time"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>取车时间：</td>
							<td><input type="date" name="maa_taketime"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table>
						<tr>
							<td>本次保养公里数：</td>
							<td><input type="text" name="maa_kilometer"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>下次保养公里数：</td>
							<td><input type="text" name="maa_nextkilometer"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table>
						<tr>
							<td>审批人：</td>
							<td><input type="text" name="adm_id"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>保养项目：</td>
							<td><input type="text" name="maa_projects"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td>备注：</td>
				<td><input type="text" name="maa_remark"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><button>取消</button></td>
			</tr>
		</table>
	</form>
</body>
</html>