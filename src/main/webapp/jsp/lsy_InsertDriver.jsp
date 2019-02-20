<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增驾驶员</title>
<!-- <link rel="stylesheet" type="text/css" href="css/lsy.css" /> -->
<link rel="stylesheet" href="<c:url value="/css/lsy.css"/>">
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript">
<%-- 	function province() {
		var provincename = document.getElementById('provinceid').value;
<%List<String> list = new ArrayList<String>();%>
	//window.location="getCity?provincename="+provincename;
		if (provincename == "浙江省") {
<%list.add("杭州市");
			list.add("金华市");%>
	}
<%session.setAttribute("theprovincename", list);%>
	} --%>
	$(function() {
		$("#provinceid").change(
				function() {
					$.ajax({
						type : "post",
						dataType : "json",
						url : "getCity",
						contentType : "application/json;charset=utf-8",
						data : JSON.stringify({
							provincename : $("#provinceid").val()
						}),
						success : function(result) {
							$("#areaid").empty()
							$("#areaid").append('<option value="">----请选择----</option>')
							$("#cityid").empty()
							$("#cityid").append('<option value="">----请选择----</option>')
							/* $("#cityid").append('<option value="'+result[0]+'">----'+result[0]+'----</option>') */
							for(var i=0;i<result.length;i++){
								$("#cityid").append('<option value="'+result[i]+'">----'+result[i]+'----</option>')
							}
 						}
					});
				})
	})
	
		$(function() {
		$("#cityid").change(
				function() {
					$.ajax({
						type : "post",
						dataType : "json",
						url : "getArea",
						contentType : "application/json;charset=utf-8",
						data : JSON.stringify({
							cityname : $("#cityid").val()
						}),
						success : function(result) {
							$("#areaid").empty()
							$("#areaid").append('<option value="">----请选择----</option>')
							/* $("#cityid").append('<option value="'+result[0]+'">----'+result[0]+'----</option>') */
							for(var i=0;i<result.length;i++){
								$("#areaid").append('<option value="'+result[i]+'">----'+result[i]+'----</option>')
							}
 						}
					});
				})
	})
	
</script>
</head>
<body>

	<center>
		<sf:form modelAttribute="thedriver" action="insertDriver">
			<table id="IDTable1">
				<tr>
					<td class="IDTd1" align="right">姓名：</td>
					<td class="IDTd1"><sf:input path="dri_name" /><br /> <font
						style="color: red"><sf:errors path="dri_name"></sf:errors></font></td>
					<td class="IDTd1" align="right">照片：</td>
					<td class="IDTd1"><sf:select path="dri_photo">
							<sf:option value="">----请选择----</sf:option>
							<sf:option value="photo1">----照片1----</sf:option>
							<sf:option value="photo2">----照片2----</sf:option>
						</sf:select></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">身份证号码：</td>
					<td class="IDTd1"><sf:input path="dri_identity" /><br /> <font
						style="color: red"><sf:errors path="dri_identity"></sf:errors></font></td>
					<td class="IDTd1" align="right">工号：</td>
					<td class="IDTd1"><sf:input path="dri_id" /><br /> <font
						style="color: red"><sf:errors path="dri_id"></sf:errors></font></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">手机号码：</td>
					<td class="IDTd1"><sf:input path="dri_phone" /><br /> <font
						style="color: red"><sf:errors path="dri_phone"></sf:errors></font></td>
					<td class="IDTd1" align="right">政治面貌：</td>
					<td class="IDTd1"><sf:select path="dri_polotics">
							<sf:option value="">----请选择----</sf:option>
							<sf:option value="群众">----群众----</sf:option>
							<sf:option value="团员">----团员----</sf:option>
							<sf:option value="党员">----党员----</sf:option>
						</sf:select></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">E_MAIL：</td>
					<td class="IDTd1"><sf:input path="dri_email" /><br /> <font
						style="color: red"><sf:errors path="dri_email"></sf:errors></font></td>
					<td class="IDTd1" align="right">性别：</td>
					<td class="IDTd1"><sf:select path="dri_sex">
							<sf:option value="">----请选择----</sf:option>
							<sf:option value="男">男</sf:option>
							<sf:option value="女">女</sf:option>
						</sf:select><br /> <font style="color: red"><sf:errors path="dri_sex"></sf:errors></font></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">出生年月：</td>
					<td class="IDTd1"><input type="date" name="dri_birthday"></td>
					<td class="IDTd1" align="right">个人密码：</td>
					<td class="IDTd1"><sf:input path="dri_password" /><br /> <font
						style="color: red"><sf:errors path="dri_password"></sf:errors></font></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">省市区：</td>
					<td class="IDTd1" colspan="3"><sf:select path="dri_address1"
							id="provinceid">
							<sf:option value="">----请选择----</sf:option>
							<sf:option value="江苏省">----江苏省----</sf:option>
							<sf:option value="浙江省">----浙江省----</sf:option>
						</sf:select> <sf:select path="dri_address2" id="cityid">
							<option value="">----请选择----</option>
						</sf:select> <sf:select path="dri_address3" id="areaid">
							<option value="">----请选择----</option>
						</sf:select></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">家庭住址：</td>
					<td class="IDTd1" colspan="3"><sf:input path="dri_address4"
							size="60" /></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">驾驶证号：</td>
					<td class="IDTd1"><sf:input path="dri_licensenum" /><br /> <font
						style="color: red"><sf:errors path="dri_licensenum"></sf:errors></font></td>
					<td class="IDTd1" align="right">领证时间：</td>
					<td class="IDTd1"><input type="date" name="dri_getlicensetime"></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">有效期限：</td>
					<td class="IDTd1"><input type="date" name="dri_validperiod"></td>
					<td class="IDTd1" align="right">准驾车型：</td>
					<td class="IDTd1"><sf:input path="dri_carstyle" /></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">发证机关：</td>
					<td class="IDTd1"><sf:input path="dri_lia" /></td>
					<td class="IDTd1" align="right">驾龄：</td>
					<td class="IDTd1"><sf:input path="dri_diverage" /></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">所属车队：</td>
					<td class="IDTd1"><sf:input path="dri_fleet" /></td>
					<td class="IDTd1" align="right">驾驶员类型：</td>
					<td class="IDTd1"><sf:select path="dri_type">
							<sf:option value="">----请选择----</sf:option>
							<sf:option value="正式员工">正式员工</sf:option>
							<sf:option value="兼职员工">兼职员工</sf:option>
						</sf:select></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">合同有效期：</td>
					<td class="IDTd1"><input type="date" name="dri_toc"></td>
					<td class="IDTd1" align="right">换证提醒天数：</td>
					<td class="IDTd1"><sf:input path="dri_hzday" /></td>
				</tr>
				<tr>
					<td class="IDTd1" align="right">备注：</td>
					<td class="IDTd1" colspan="3"><sf:textarea path="dri_remarks"
							cols="50" rows="3"></sf:textarea></td>
				</tr>
			</table>
			<br />
			<br />
			<input type="submit" value="保存">
			<input type="reset" value="取消">
		</sf:form>
	</center>

</body>
</html>