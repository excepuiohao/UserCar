<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertRefueling">
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
							<td>油料编号：</td>
							<td><input type="text" name="ref_label"></td>
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
							<td>加油费用：</td>
							<td><input type="text" name="ref_money"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table>
						<tr>
							<td>加油时间：</td>
							<td><input type="date" name="ref_time"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>付款方式：</td>
							<td><input type="text" name="ref_payment"></td>
							<td>必填</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table>
						<tr>
							<td>单价（元/升）：</td>
							<td><input type="text" name="ref_unitprice"></td>
							<td>必填</td>
						</tr>
					</table></td>
				<td><table>
						<tr>
							<td>加油量：</td>
							<td><input type="text" name="ref_quantity"></td>
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
							<td>当前里程：</td>
							<td><input type="text" name="ref_nowkm"></td>
							<td>必填</td>
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