<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript">
	function oc1() {
		window.location = 'NewFile.jsp';
	}
</script> -->
</head>
<body>
	<form action="insertMaintain">
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
							<td><input type="text" name="mai_garage"></td>
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
							<td>维修费用：</td>
							<td><input type="text" name="mai_money"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table>
						<tr>
							<td>送修时间：</td>
							<td><input type="date" name="mai_time"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>取车时间：</td>
							<td><input type="date" name="mai_taketime"></td>
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
							<td>备注：</td>
							<td><input type="text" name="mai_remark"></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><button>取消</button></td>
			</tr>
		</table>
	</form>
</body>
</html>