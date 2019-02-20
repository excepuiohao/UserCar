<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".btSendCar").click(
				function() {
					var cid = $(this).parents("tr").find("td").first().text();
					var did = $(this).parents("tr").find("td").last().prev()
							.text();
					window.location = "sendOneCar?car_id=" + cid + "&dri_id="
							+ did + "&app_id=" + $(this).val();
				})
	});
</script>
</head>
<body>
	<center>
		<table id="ta1" cellpadding="3px" border="solid 1px"
			style="width: 1000px; border-collapse: collapse;">
			<tr>
				<td colspan="10">按 <select id="se1" style="width: 100px">
						<option></option>
						<option value="app_status">状态</option>
						<option value="car_type">车类型</option>
						<option value="car_color">车颜色</option>
						<option value="emp_mech">部门</option>
				</select> 搜索: <select id="se2" style="width: 100px">
						<option></option>
				</select>
					<button id="bt1">确认</button>
				</td>
			</tr>
			<tr>
				<td>车牌号</td>
				<td>车辆颜色</td>
				<td>车辆类型</td>
				<td>所属车队</td>
				<td>车辆状态</td>
				<td>驾驶员</td>
				<td>操作</td>
			</tr>
			<tbody id="tbody">
				<c:forEach items="${pb.list}" var="a">
					<tr>
						<td>${a.CarLine}</td>
						<td>${a.DriverId}</td>
						<td>${a.CarNumber}</td>
						<td>${a.CarModel}</td>
						<td>${a.CarTime}</td>
						<td>${a.dri_id}</td>
						<td><button class="btSendCar" value="${app_id}">选择</button></td>
					</tr>
				</c:forEach>
			</tbody>
			<tr>
				<td colspan="10"><button id="firstPage">首页</button>
					<button id="lastPage">上一页</button> 第<font id="pageCode"> <select
						id="pageCodeSelect">
							<c:forEach items="${pb.list}" varStatus="i"
								end="${pb.allPages-1}">
								<option>${i.index+1}</option>
							</c:forEach>
					</select></font> 页/共<font id="allPages">${pb.allPages}</font>页
					<button id="nextPage">下一页</button>
					<button id="endPage">末页</button></td>
			</tr>
		</table>
	</center>
</body>
</html>