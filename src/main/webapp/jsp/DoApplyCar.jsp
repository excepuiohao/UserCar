<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/css/mcx.css"/>" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#se1").change(function(){
		//alert($("#se1 option:selected").val());
		//window.location="findapp";
		 $.ajax({
			type:"post",
			dataType:"json",
			url:"findType",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify({
				type:$("#se1 option:selected").val()
			}),
			success: function(result){
				$("#se2").empty();
				for(var i=0;i<result.length;i++){
					if(result[i]==null){
						result[i]="";
					}
					$("#se2").append("<option>"+result[i]+"</option>")
				}
			}
		});  
	})
	
		$("#bt1").click(function(){
			//alert($("#se1 option:selected").val());
			//window.location="findapp";
			 $.ajax({
				type:"post",
				dataType:"json",
				url:"findPageApply",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					list:[$("#se1 option:selected").val(),$("#se2 option:selected").val()]
				}),
				success: function(result){
					$("#tbody").empty();
					for(var i=0;i<result.list.length;i++){
						$("#tbody").append("<tr><td>"+result.list[i].app_id
								+"</td><td>"+result.list[i].emp_name
								+"</td><td>"+result.list[i].emp_mech
								+"</td><td>"+result.list[i].car_type
								+"</td><td>"+result.list[i].car_color
								+"</td><td>"+result.list[i].app_time
								+"</td><td>"+result.list[i].app_usetime
								+"</td><td>"+result.list[i].app_duration
								+"</td><td>"+result.list[i].app_status
								+"</td><td><button class='btAuditing'>详细信息</button></tr>");
					}
					$("#pageCodeSelect").empty();
					for(var t=1;t<=result.allPages;t++){
						if(t==result.pageCode){
							$("#pageCodeSelect").append("<option selected='selected'>"+t+"</option>");
						}else{
							$("#pageCodeSelect").append("<option>"+t+"</option>");
						}
					}
					$("#allPages").text(result.allPages);
				}
			});  
		})
		
		$("#firstPage").click(function(){
			 $.ajax({
				type:"post",
				dataType:"json",
				url:"findPageApply",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					pageCode:1,
					pageSize:5,
					list:[$("#se1 option:selected").val(),$("#se2 option:selected").val()]
				}),
				success: function(result){
					$("#tbody").empty();
					for(var i=0;i<result.list.length;i++){
						$("#tbody").append("<tr><td>"+result.list[i].app_id
								+"</td><td>"+result.list[i].emp_name
								+"</td><td>"+result.list[i].emp_mech
								+"</td><td>"+result.list[i].car_type
								+"</td><td>"+result.list[i].car_color
								+"</td><td>"+result.list[i].app_time
								+"</td><td>"+result.list[i].app_usetime
								+"</td><td>"+result.list[i].app_duration
								+"</td><td>"+result.list[i].app_status
								+"</td><td><button class='btAuditing'>详细信息</button></td></tr>");
					}
					$("#pageCodeSelect").empty();
					for(var t=1;t<=result.allPages;t++){
						if(t==result.pageCode){
							$("#pageCodeSelect").append("<option selected='selected'>"+t+"</option>");
						}else{
							$("#pageCodeSelect").append("<option>"+t+"</option>");
						}
					}
					$("#allPages").text(result.allPages);
				}
			});  
		})
		$("#lastPage").click(function(){
			 $.ajax({
				type:"post",
				dataType:"json",
				url:"findPageApply",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					pageCode:$("#pageCodeSelect option:selected").val()-1,
					pageSize:5,
					list:[$("#se1 option:selected").val(),$("#se2 option:selected").val()]
				}),
				success: function(result){
					$("#tbody").empty();
					for(var i=0;i<result.list.length;i++){
						$("#tbody").append("<tr><td>"+result.list[i].app_id
								+"</td><td>"+result.list[i].emp_name
								+"</td><td>"+result.list[i].emp_mech								
								+"</td><td>"+result.list[i].car_type
								+"</td><td>"+result.list[i].car_color
								+"</td><td>"+result.list[i].app_time
								+"</td><td>"+result.list[i].app_usetime
								+"</td><td>"+result.list[i].app_duration
								+"</td><td>"+result.list[i].app_status
								+"</td><td><button class='btAuditing'>详细信息</button></td></tr>");
					}
					$("#pageCodeSelect").empty();
					for(var t=1;t<=result.allPages;t++){
						if(t==result.pageCode){
							$("#pageCodeSelect").append("<option selected='selected'>"+t+"</option>");
						}else{
							$("#pageCodeSelect").append("<option>"+t+"</option>");
						}
					}
					$("#allPages").text(result.allPages);
				}
			});  
		})
		
		$("#nextPage").click(function(){
			 $.ajax({
				type:"post",
				dataType:"json",
				url:"findPageApply",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					pageCode:$("#pageCodeSelect option:selected").val()-1+2,
					pageSize:5,
					list:[$("#se1 option:selected").val(),$("#se2 option:selected").val()]
				}),
				success: function(result){
					$("#tbody").empty();
					for(var i=0;i<result.list.length;i++){
						$("#tbody").append("<tr><td>"+result.list[i].app_id
								+"</td><td>"+result.list[i].emp_name
								+"</td><td>"+result.list[i].emp_mech								
								+"</td><td>"+result.list[i].car_type
								+"</td><td>"+result.list[i].car_color
								+"</td><td>"+result.list[i].app_time
								+"</td><td>"+result.list[i].app_usetime
								+"</td><td>"+result.list[i].app_duration
								+"</td><td>"+result.list[i].app_status
								+"</td><td><button class='btAuditing'>详细信息</button></td></tr>");
					}
					$("#pageCodeSelect").empty();
					for(var t=1;t<=result.allPages;t++){
						if(t==result.pageCode){
							$("#pageCodeSelect").append("<option selected='selected'>"+t+"</option>");
						}else{
							$("#pageCodeSelect").append("<option>"+t+"</option>");
						}
					}
					$("#allPages").text(result.allPages);
				}
			});  
		})
		
		$("#endPage").click(function(){
			 $.ajax({
				type:"post",
				dataType:"json",
				url:"findPageApply",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					pageCode:$("#allPages").text(),
					pageSize:5,
					list:[$("#se1 option:selected").val(),$("#se2 option:selected").val()]
				}),
				success: function(result){
					$("#tbody").empty();
					for(var i=0;i<result.list.length;i++){
						$("#tbody").append("<tr><td>"+result.list[i].app_id
								+"</td><td>"+result.list[i].emp_name
								+"</td><td>"+result.list[i].emp_mech								
								+"</td><td>"+result.list[i].car_type
								+"</td><td>"+result.list[i].car_color
								+"</td><td>"+result.list[i].app_time
								+"</td><td>"+result.list[i].app_usetime
								+"</td><td>"+result.list[i].app_duration
								+"</td><td>"+result.list[i].app_status
								+"</td><td><button class='btAuditing'>详细信息</button></td></tr>");
					}
					$("#pageCodeSelect").empty();
					for(var t=1;t<=result.allPages;t++){
						if(t==result.pageCode){
							$("#pageCodeSelect").append("<option selected='selected'>"+t+"</option>");
						}else{
							$("#pageCodeSelect").append("<option>"+t+"</option>");
						}
					}
					$("#allPages").text(result.allPages);
				}
			});  
		})
		
		$("#pageCodeSelect").change(function(){
			 $.ajax({
				type:"post",
				dataType:"json",
				url:"findPageApply",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					pageCode:$("#pageCodeSelect option:selected").val(),
					pageSize:5,
					list:[$("#se1 option:selected").val(),$("#se2 option:selected").val()]
				}),
				success: function(result){
					$("#tbody").empty();
					for(var i=0;i<result.list.length;i++){
						$("#tbody").append("<tr><td>"+result.list[i].app_id
								+"</td><td>"+result.list[i].emp_name
								+"</td><td>"+result.list[i].emp_mech								
								+"</td><td>"+result.list[i].car_type
								+"</td><td>"+result.list[i].car_color
								+"</td><td>"+result.list[i].app_time
								+"</td><td>"+result.list[i].app_usetime
								+"</td><td>"+result.list[i].app_duration
								+"</td><td>"+result.list[i].app_status
								+"</td><td><button class='btAuditing'>详细信息</button></td></tr>");
					}
					$("#pageCodeSelect").empty();
					for(var t=1;t<=result.allPages;t++){
						if(t==result.pageCode){
							$("#pageCodeSelect").append("<option selected='selected'>"+t+"</option>");
						}else{
							$("#pageCodeSelect").append("<option>"+t+"</option>");
						}
					}
					$("#allPages").text(result.allPages);
				}
			});  
		})
		
		$("body").on("click",".btAuditing",function(){
			//alert($(this).parents("tr").find("td").first().text());
			 $.ajax({
				type:"post",
				dataType:"json",
				url:"Auditing",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					type:$(this).parents("tr").find("td").first().text()
				}),
				success: function(result){
						$("#table2").empty();
					 	  $("#table2").append("<tr><td colspan='3'>申请单号:<font class='f1'>"+result[0].app_id
								+"</font></td></tr><tr><td>申请人工号:<font class='f1'>"+result[0].emp_id
								+"</font></td><td>申请人姓名:<font class='f1'>"+result[0].emp_name
								+"</font></td><td>部门:<font class='f1'>"+result[0].emp_mech
								+"</font></td></tr><tr><td>申请车类型:<font class='f1'>"+result[0].car_type
							+"</font></td><td>申请车颜色:<font class='f1'>"+result[0].car_color
							+"</font></td><td>随车人数:<font class='f1'>"+result[0].app_count
							+"</font></td></tr><tr><td>申请时间:<font class='f1'>"+result[0].app_time
							+"</font></td><td>用车时间:<font class='f1'>"+result[0].app_usetime
							+"</font></td><td>估计用时:<font class='f1'>"+result[0].app_duration
							+"</font></td></tr><tr><td>始发地:<font class='f1'>"+result[0].app_beginplace
							+"</font></td><td></td><td>目的地:<font class='f1'>"+result[0].app_lastplace
							+"</font></td></tr><tr><td colspan='3'>途径:<font class='f1'>"+result[0].app_route
							+"</font></td></tr><tr><td colspan='3'>用车事由:<font class='f1'>"+result[0].app_reason
							+"</font></td></tr><tr><td colspan='3'>备注:"+result[0].app_remarks
							+"</font></td></tr><tr><td>申请状态:<font class='f1'>"+result[0].app_status
							+"</font></td></tr><tr><td id='tdOpen'> </td></tr>");
					 	  var url ="app_id="+result[0].app_id+"&car_color="+result[0].car_color+"&car_type="+result[0].car_type+"&car_status=空闲";

					 	  if(result[0].app_status=="待审核"){
					 		 $("#tdOpen").append("<button class='butOpen' value="+result[0].app_id+" >审核通过</button> <button class='butOpen' value="+result[0].app_id+">审核不通过</button>");
					 	  }else if(result[0].app_status=="待派车"){
					 		 $("#tdOpen").append("<button class='butTakeCar' value="+url+" >派车</button> ");
					 	  }
				}
			});   
		})
		$("body").on("click",".butOpen",function(){
			if($(this).text()=="审核通过"){
				var sta = "待派车";
			}else{
				var sta = "未通过";
			}
		 	 $.ajax({
				type:"post",
				dataType:"json",
				url:"changeStatus",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify({
					app_id:$(this).val(),
					status:sta
				}),
				success:function(result){
				}
			});  
		 	 
		 	 $.ajax({
					type:"post",
					dataType:"json",
					url:"findPageApply",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify({
						pageCode:$("#pageCodeSelect option:selected").val(),
						pageSize:5,
						list:[$("#se1 option:selected").val(),$("#se2 option:selected").val()]
					}),
					success: function(result){
						$("#tbody").empty();
						for(var i=0;i<result.list.length;i++){
							$("#tbody").append("<tr><td>"+result.list[i].app_id
									+"</td><td>"+result.list[i].emp_name
									+"</td><td>"+result.list[i].emp_mech								
									+"</td><td>"+result.list[i].car_type
									+"</td><td>"+result.list[i].car_color
									+"</td><td>"+result.list[i].app_time
									+"</td><td>"+result.list[i].app_usetime
									+"</td><td>"+result.list[i].app_duration
									+"</td><td>"+result.list[i].app_status
									+"</td><td><button class='btAuditing'>详细信息</button></td></tr>");
						}
						$("#pageCodeSelect").empty();
						for(var t=1;t<=result.allPages;t++){
							if(t==result.pageCode){
								$("#pageCodeSelect").append("<option selected='selected'>"+t+"</option>");
							}else{
								$("#pageCodeSelect").append("<option>"+t+"</option>");
							}
						}
						$("#allPages").text(result.allPages);
					}
				});  
		 	 
		 	 $.ajax({
					type:"post",
					dataType:"json",
					url:"Auditing",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify({
						type:$(this).val()
					}),
					success: function(result){
							$("#table2").empty();
						 	  $("#table2").append("<tr><td colspan='3'>申请单号:<font class='f1'>"+result[0].app_id
									+"</font></td></tr><tr><td>申请人工号:<font class='f1'>"+result[0].emp_id
									+"</font></td><td>申请人姓名:<font class='f1'>"+result[0].emp_name
									+"</font></td><td>部门:<font class='f1'>"+result[0].emp_mech
									+"</font></td></tr><tr><td>申请车类型:<font class='f1'>"+result[0].car_type
								+"</font></td><td>申请车颜色:<font class='f1'>"+result[0].car_color
								+"</font></td><td>随车人数:<font class='f1'>"+result[0].app_count
								+"</font></td></tr><tr><td>申请时间:<font class='f1'>"+result[0].app_time
								+"</font></td><td>用车时间:<font class='f1'>"+result[0].app_usetime
								+"</font></td><td>估计用时:<font class='f1'>"+result[0].app_duration
								+"</font></td></tr><tr><td>始发地:<font class='f1'>"+result[0].app_beginplace
								+"</font></td><td></td><td>目的地:<font class='f1'>"+result[0].app_lastplace
								+"</font></td></tr><tr><td colspan='3'>途径:<font class='f1'>"+result[0].app_route
								+"</font></td></tr><tr><td colspan='3'>用车事由:<font class='f1'>"+result[0].app_reason
								+"</font></td></tr><tr><td colspan='3'>备注:<font class='f1'>"+result[0].app_remarks
								+"</font></td></tr><tr><td>申请状态:<font class='f1'>"+result[0].app_status
								+"</font></td></tr><tr><td id='tdOpen'> </td></tr>");
						 	  var url ="app_id="+result[0].app_id+"&car_color="+result[0].car_color+"&car_type="+result[0].car_type+"&car_status=空闲";
						 	  if(result[0].app_status=="待审核"){
						 		 $("#tdOpen").append("<button class='butOpen' value="+result[0].app_id+" >审核通过</button> <button class='butOpen' value="+result[0].app_id+">撤销申请</button>");
						 	  }else if(result[0].app_status=="待派车"){
						 		 $("#tdOpen").append("<button class='butTakeCar' value="+url+" >派车</button> ");
						 	  }
					}
				});   
		 	 
		})
		
		$("body").on("click",".butTakeCar",function(){
			//alert($(this).val());
			window.location="findCarBySometype?"+$(this).val();
		});
});
</script>
</head>
<body>
<center>
<table id="ta1" cellpadding="3px" border="solid 1px" style="width:1000px; border-collapse:collapse;">
<tr><td colspan="10"> 按 
<select id="se1" style="width:100px">
<option></option>
<option value="app_status">状态</option>
<option value="car_type">车类型</option>
<option value="car_color">车颜色</option>
<option value="emp_mech">部门</option>
</select> 搜索: <select id="se2" style="width:100px">
<option></option>
</select>
<button id="bt1">确认</button>
</td></tr>
<tr>
<td>申请单号</td>
<td>申请人姓名</td>
<td>所属部门</td>
<td>申请车类型</td>
<td>申请车颜色</td>
<td>申请时间</td>
<td>用车时间</td>
<td>估计用时</td>
<td>申请状态</td>
<td>操作</td>
</tr> 
<tbody id="tbody">
<c:forEach items="${pb.list}" var="a" >
<tr>
<td>${a.app_id}</td>
<td>${a.emp_name}</td>
<td>${a.emp_mech}</td>
<td>${a.car_type}</td>
<td>${a.car_color}</td>
<td>${a.app_time}</td>
<td>${a.app_usetime}</td>
<td>${a.app_duration}</td>
<td>${a.app_status}</td>
<td><button class="btAuditing">详细信息</button></td>
</tr>
</c:forEach>
</tbody>
<tr><td colspan="10"><button id="firstPage">首页</button><button id="lastPage">上一页</button> 第<font id="pageCode">
<select id="pageCodeSelect">
<c:forEach items="${pb.list}" varStatus="i" end="${pb.allPages-1}">
<option>${i.index+1}</option>
</c:forEach>
</select></font> 页/共<font id="allPages">${pb.allPages}</font>页  <button id="nextPage">下一页</button><button id="endPage">末页</button>  </td></tr>
</table>


<table id="table2" cellpadding="3px" border="solid 1px" style="margin-top:50px; width:1000px; border-collapse:collapse;">

</table>
</center>
</body>
</html>