<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>驾驶员派单信息</title>
<link rel="stylesheet" href="<c:url value="/css/lsy.css"/>">
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript">
$(function() {
	$("#SSIFirstPageId").click(
			function() {
				$.ajax({
					type : "post",
					dataType : "json",
					url : "SSIPageTurning",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify({
						thepage : 1,
						dri_id : $("#thedri_id").text()
					}),
					success : function(result) {
						$("#SSITbody1").empty()
						for(var i=0;i<result.list.length;i++){
							$("#SSITbody1").append('<tr><td class="SSITd1">'+result.list[i].send_id+
									'</td><td class="SSITd1">'+result.list[i].car_id+
									'</td><td class="SSITd1">'+result.list[i].send_time+
									'</td><td class="SSITd1">'+result.list[i].app_id+
									'</td><td class="SSITd1">'+result.list[i].adm_id+
									'</td><td class="SSITd1" style="color: red">'+result.list[i].send_status+
									'</td></tr>')
						}
						 var allPages = $("#SSISelectPageId").get(0).options.length
						 $("#SSISelectPageId").empty()
						 for(var j=1;j<=allPages;j++){
						 	   if(j!=result.pageCode){
								    $("#SSISelectPageId").append('<option value="'+j+'">第'+j+'页</option>')
						 	   }else{
						 	    	$("#SSISelectPageId").append('<option selected="selected" value="'+j+'">第'+j+'页</option>')
						 	   }
						 }
					}
				});
			})
})

$(function() {
	$("#SSILastPageId").click(
			function() {
				$.ajax({
					type : "post",
					dataType : "json",
					url : "SSIPageTurning",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify({
						thepage : $("#SSISelectPageId").get(0).options.length,
						dri_id : $("#thedri_id").text()
					}),
					success : function(result) {
						$("#SSITbody1").empty()
						for(var i=0;i<result.list.length;i++){
							$("#SSITbody1").append('<tr><td class="SSITd1">'+result.list[i].send_id+
									'</td><td class="SSITd1">'+result.list[i].car_id+
									'</td><td class="SSITd1">'+result.list[i].send_time+
									'</td><td class="SSITd1">'+result.list[i].app_id+
									'</td><td class="SSITd1">'+result.list[i].adm_id+
									'</td><td class="SSITd1" style="color: red">'+result.list[i].send_status+
									'</td></tr>')
							 var allPages = $("#SSISelectPageId").get(0).options.length
							 $("#SSISelectPageId").empty()
							 for(var j=1;j<=allPages;j++){
							 	   if(j!=result.pageCode){
									    $("#SSISelectPageId").append('<option value="'+j+'">第'+j+'页</option>')
							 	   }else{
							 	    	$("#SSISelectPageId").append('<option selected="selected" value="'+j+'">第'+j+'页</option>')
							 	   }
							 }
						}
					}
				});
			})
})

$(function() {
	$("#SSISelectPageId").change(
			function() {
				$.ajax({
					type : "post",
					dataType : "json",
					url : "SSIPageTurning",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify({
						thepage : $("#SSISelectPageId").val(),
						dri_id : $("#thedri_id").text()
					}),
					success : function(result) {
						$("#SSITbody1").empty()
						for(var i=0;i<result.list.length;i++){
							$("#SSITbody1").append('<tr><td class="SSITd1">'+result.list[i].send_id+
									'</td><td class="SSITd1">'+result.list[i].car_id+
									'</td><td class="SSITd1">'+result.list[i].send_time+
									'</td><td class="SSITd1">'+result.list[i].app_id+
									'</td><td class="SSITd1">'+result.list[i].adm_id+
									'</td><td class="SSITd1" style="color: red">'+result.list[i].send_status+
									'</td></tr>')
							 var allPages = $("#SSISelectPageId").get(0).options.length
							 $("#SSISelectPageId").empty()
							 for(var j=1;j<=allPages;j++){
							 	   if(j!=result.pageCode){
									    $("#SSISelectPageId").append('<option value="'+j+'">第'+j+'页</option>')
							 	   }else{
							 	    	$("#SSISelectPageId").append('<option selected="selected" value="'+j+'">第'+j+'页</option>')
							 	   }
							 }
						}
					}
				});
			})
})

$(function() {
	$("#SSIToLastPageId").click(
			function() {
				if($("#SSISelectPageId").val()-1<1){
					alert('已经是第一页了')
				}else{
				$.ajax({
					type : "post",
					dataType : "json",
					url : "SSIPageTurning",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify({
						thepage : $("#SSISelectPageId").val()-1,
						dri_id : $("#thedri_id").text()
					}),
					success : function(result) {
						$("#SSITbody1").empty()
						for(var i=0;i<result.list.length;i++){
							$("#SSITbody1").append('<tr><td class="SSITd1">'+result.list[i].send_id+
									'</td><td class="SSITd1">'+result.list[i].car_id+
									'</td><td class="SSITd1">'+result.list[i].send_time+
									'</td><td class="SSITd1">'+result.list[i].app_id+
									'</td><td class="SSITd1">'+result.list[i].adm_id+
									'</td><td class="SSITd1" style="color: red">'+result.list[i].send_status+
									'</td></tr>')
							 var allPages = $("#SSISelectPageId").get(0).options.length
							 $("#SSISelectPageId").empty()
							 for(var j=1;j<=allPages;j++){
							 	   if(j!=result.pageCode){
									    $("#SSISelectPageId").append('<option value="'+j+'">第'+j+'页</option>')
							 	   }else{
							 	    	$("#SSISelectPageId").append('<option selected="selected" value="'+j+'">第'+j+'页</option>')
							 	   }
							 }
						}
					}
				});
				}
			})
})

$(function() {
	$("#SSIToNextPageId").click(
			function() {
				if($("#SSISelectPageId").val()>$("#SSISelectPageId").get(0).options.length-1){
					alert('已经是最后一页了')
				}else{
				$.ajax({
					type : "post",
					dataType : "json",
					url : "SSIPageTurning",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify({
						thepage : $("#SSISelectPageId").val()-1+2,
						dri_id : $("#thedri_id").text()
					}),
					success : function(result) {
						$("#SSITbody1").empty()
						for(var i=0;i<result.list.length;i++){
							$("#SSITbody1").append('<tr><td class="SSITd1">'+result.list[i].send_id+
									'</td><td class="SSITd1">'+result.list[i].car_id+
									'</td><td class="SSITd1">'+result.list[i].send_time+
									'</td><td class="SSITd1">'+result.list[i].app_id+
									'</td><td class="SSITd1">'+result.list[i].adm_id+
									'</td><td class="SSITd1" style="color: red">'+result.list[i].send_status+
									'</td></tr>')
							 var allPages = $("#SSISelectPageId").get(0).options.length
							 $("#SSISelectPageId").empty()
							 for(var j=1;j<=allPages;j++){
							 	   if(j!=result.pageCode){
									    $("#SSISelectPageId").append('<option value="'+j+'">第'+j+'页</option>')
							 	   }else{
							 	    	$("#SSISelectPageId").append('<option selected="selected" value="'+j+'">第'+j+'页</option>')
							 	   }
							 }
						}
					}
				});
				}
			})
})
</script>
</head>
<body>

	<table id="SSITable1">
		<tr>
			<td>工号：</td>
			<td colspan="3" id="thedri_id">${dri_id}</td>
			<td>总记录数：</td>
			<td id="thecount">${allcount}</td>
		</tr>
		<tr>
			<td class="SSITd1">派单号</td>
			<td class="SSITd1">车牌号</td>
			<td class="SSITd1">派单时间</td>
			<td class="SSITd1">申请单号</td>
			<td class="SSITd1">审批人</td>
			<td class="SSITd1">派单状态</td>
		</tr>
		<tbody id="SSITbody1">
			<c:forEach var="line" items="${firstsendorderlist}">
				<tr>
					<td class="SSITd1"><c:out value="${line.getSend_id()}"></c:out></td>
					<td class="SSITd1"><c:out value="${line.getCar_id()}"></c:out></td>
					<td class="SSITd1"><c:out value="${line.getSend_time()}"></c:out></td>
					<td class="SSITd1"><c:out value="${line.getApp_id()}"></c:out></td>
					<td class="SSITd1"><c:out value="${line.getAdm_id()}"></c:out></td>
					<td class="SSITd1" style="color: red"><c:out
							value="${line.getSend_status()}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
		<tr>
			<td colspan="6"><button id="SSIFirstPageId">首页</button>
				<button id="SSIToLastPageId">上一页</button> <select id="SSISelectPageId">
					<c:forEach var="pageline" items="${allsendorderpageslist}">
						<option value="${pageline}">第${pageline}页</option>
					</c:forEach>
			</select>
				<button id="SSIToNextPageId">下一页</button>
				<button id="SSILastPageId">尾页</button></td>
		</tr>

	</table>

</body>
</html>