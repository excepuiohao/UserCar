<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>驾驶员详细信息</title>
<link rel="stylesheet" href="<c:url value="/css/lsy.css"/>">
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lsy.js"/>"></script>
<script type="text/javascript">
$(function() {
	$("#driverEnabledId").click(
			function() {
				if(confirm("确定启用该驾驶员？")){
				$.ajax({
					type : "post",
					dataType : "json",
					url : "updateDriverType",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify({
						theenableddri_id : $("#theenableddri_id").text(),
						columnName : "dri_status",
						propertyValue : "空闲"
					}),
					success : function(result) {
						$("#update"+result[1]).empty()
						$("#update"+result[1]).append(result[2]);
					}
				});
				}
			})		
})

$(function() {
	$("#driverDisabledId").click(
			function() {
				if(confirm("确定停用该驾驶员？")){
				$.ajax({
					type : "post",
					dataType : "json",
					url : "updateDriverType",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify({
						theenableddri_id : $("#theenableddri_id").text(),
						columnName : "dri_status",
						propertyValue : "停用"
					}),
					success : function(result) {
						$("#update"+result[1]).empty()
						$("#update"+result[1]).append(result[2]);
					}
				});
				}
			})		
})

$(function() {
	$("#updatedri_phone").click(
			function() {
				if($("#updatedri_phone").html()=="〇"){
					var dri_phone = $("#thedri_phone").text();
					$("#thedri_phone").empty();
					$("#thedri_phone").append('<input type="text" id="thenewdri_phone" value="'+dri_phone+'" />');
					$("#updatedri_phone").html('√');
				}else if($("#updatedri_phone").html()=="√"){
					$.ajax({
						type : "post",
						dataType : "json",
						url : "updateDriverType",
						contentType : "application/json;charset=utf-8",
						data : JSON.stringify({
							theenableddri_id : $("#theenableddri_id").text(),
							columnName : "dri_phone",
							propertyValue : $("#thenewdri_phone").val()
						}),
						success : function(result) {
							$("#the"+result[1]).empty()
							$("#the"+result[1]).append(result[2]);
							$("#update"+result[1]).html('〇');
						}
					})	
				}
			})		
})

$(function() {
	$("#updatedri_polotics").click(
			function() {
				if($("#updatedri_polotics").html()=="〇"){
					var dri_polotics = $("#thedri_polotics").text();
					$("#thedri_polotics").empty();
					$("#thedri_polotics").append('<select id="thenewdri_polotics"><option>群众</option><option>团员</option><option>党员</option></select>');
					$("#updatedri_polotics").html('√');
				}else if($("#updatedri_polotics").html()=="√"){
					$.ajax({
						type : "post",
						dataType : "json",
						url : "updateDriverType",
						contentType : "application/json;charset=utf-8",
						data : JSON.stringify({
							theenableddri_id : $("#theenableddri_id").text(),
							columnName : "dri_polotics",
							propertyValue : $("#thenewdri_polotics").val()
						}),
						success : function(result) {
							$("#the"+result[1]).empty()
							$("#the"+result[1]).append(result[2]);
							$("#update"+result[1]).html('〇');
						}
					})	
				}
			})		
})

$(function() {
	$("#updatedri_type").click(
			function() {
				if(confirm("确认转正工号为:"+$("#theenableddri_id").text()+"的员工:"+$("#theenableddri_name").text()+"?")){
					$.ajax({
						type : "post",
						dataType : "json",
						url : "updateDriverType",
						contentType : "application/json;charset=utf-8",
						data : JSON.stringify({
							theenableddri_id : $("#theenableddri_id").text(),
							columnName : "dri_type",
							propertyValue : "正式员工"
						}),
						success : function(result) {
							$("#the"+result[1]).empty()
							$("#the"+result[1]).append(result[2]);
							$("#update"+result[1]).remove();
						}
					});
				}
			})		
})

</script>
</head>
<body>

	<table id="SDITable1">
		<tr>
			<td class="SDITd1" align="right">工号：</td>
			<td class="SDITd1" id="theenableddri_id">${detailedDriverInfo.dri_id}</td>
			<td class="SDITd1" align="right">姓名：</td>
			<td class="SDITd1" id="theenableddri_name">${detailedDriverInfo.dri_name}</td>
			<td class="SDITd1" rowspan="5" colspan="2">照片：${detailedDriverInfo.dri_photo}</td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">性别：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_sex}</td>
			<td class="SDITd1" align="right">手机号码：</td>
			<td class="SDITd1"><font id="thedri_phone">${detailedDriverInfo.dri_phone}</font><button id="updatedri_phone">〇</button></td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">出生日期：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_birthday}</td>
			<td class="SDITd1" align="right">政治面貌：</td>
			<td class="SDITd1"><font id="thedri_polotics">${detailedDriverInfo.dri_polotics}</font><button id="updatedri_polotics">〇</button></td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">E-mail：</td>
			<td class="SDITd1" colspan="3">${detailedDriverInfo.dri_email}</td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">身份证号：</td>
			<td class="SDITd1" colspan="3">${detailedDriverInfo.dri_identity}</td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">家庭住址：</td>
			<td class="SDITd1" colspan="3">${detailedDriverInfo.dri_address}</td>
			<td class="SDITd1" colspan="2" align="center"><a href="firstSelectSendorderByDriverId?dri_id=${detailedDriverInfo.dri_id}">派单记录</a></td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">驾驶证号：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_licensenum}</td>
			<td class="SDITd1" align="right">领证时间：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_getlicensetime}</td>
			<td class="SDITd1" align="right">准驾车型：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_carstyle}</td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">驾龄：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_diverage}</td>
			<td class="SDITd1" align="right">发证机关：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_lia}</td>
			<td class="SDITd1" align="right">合同有效期：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_toc}</td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">换证提醒天数：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_hzday}</td>
			<td class="SDITd1" align="right">驾驶员类型：</td>
			<td class="SDITd1"><font id="thedri_type">${detailedDriverInfo.dri_type}</font>
			<c:choose>
			    <c:when test="${detailedDriverInfo.dri_type!='正式员工'}">
			        <button id="updatedri_type">转正</button>
			    </c:when>
			</c:choose>
			</td>
			<td class="SDITd1" align="right">驾驶员状态：</td>
			<td class="SDITd1" style="color:red" id="updatedri_status">${detailedDriverInfo.dri_status}</td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">驾照有效期限：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_validperiod}</td>
			<td class="SDITd1" align="right">所属车队：</td>
			<td class="SDITd1">${detailedDriverInfo.dri_fleet}</td>
			<td class="SDITd1" colspan="2" align="center"><button id="driverEnabledId">驾驶员启用</button>
			<button id="driverDisabledId">驾驶员停用</button></td>
		</tr>
		<tr>
			<td class="SDITd1" align="right">备注：</td>
			<td class="SDITd1" colspan="5">${detailedDriverInfo.dri_remarks}</td>
		</tr>

	</table>

</body>
</html>