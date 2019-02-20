<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员首页</title>
<link href="<c:url value="/css/Admin_First.css"/>" rel="stylesheet">
<script type="text/javascript" ></script>
</head>
<body>
	<div>
	<!--个人信息-->
	<div id="div4">
		<div id="div5">
			<div style="position: relative; top: 5px; left: 5px">
				<font size="+2" color="#FFFFFF">个人信息</font>
			</div>
		</div>
		<div id="div6"></div>
		<div style="position: relative; top: -50px">
			<hr color="#007FCB" />
		</div>
	</div>
	<!--南京市公务用车管理平台-->
	<div id="div10">
		<div id="div11">
			<div style="position: relative; top: 5px; left: 5px">
				<font size="+2" color="#FFFFFF">南京市公务用车管理平台</font>
			</div>
			<!--小三角-->
			<div id="div12"></div>
			<div style="position: relative; top: -37px; left: 270px">
				<hr color=" #007FCB" width="828px" />
			</div>
			<!--页面刷新-->
			<div style="position: relative; top: -80px; left: 1030px;width: 80px">
				<button style="border: none; background-color: #E9E9E9">
					<b><font size="+2">刷新</font></b>
				</button>
			</div>
		</div>
	</div>
	<!--管理员信息-->
	<div id="div7">
		<img id="img1" src="../img/Admin2.png" />
		<div id="div8">
			<table>
				<tr>
					<td><font size="+2">管理员</font></td>
				</tr>
				<tr>
					<td><font size="+2">${adm.getEmp_name()}<br>欢迎登录!</font></td>
				</tr>
				<tr>
					<td><a href=""><div align="center" id="font1">
								<font color="#FFFFFF">修改密码</font>
								<div></a></td>
				</tr>
			</table>
		</div>
		<div id="div9">
			<table id="table1">
				<tr>
					<td><font size="+2">部门：(${adm.getEmp_mech()})</font></td>
				</tr>
				<tr>
					<td><font size="+2">角色：(${adm.getEmp_role()})</font></td>
				</tr>
				<%Date date = new Date();SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); %>
				<tr>
					<td><font size="+2">登录时间：(<%=sf.format(date) %>)</font></td>
				</tr>
			</table>
		</div>
		<!--代办业务-->
		<div class="div13" id="div14" align="center">
			<font color="#FFFFFF"><b>代办业务</b></font>
		</div>
		<div id="div15">
			<table class="table2" cellspacing="0px" width="500px">
				<tr height="40px">
					<td class="td1">【待审批】用车申请</td>
					<td align="right" class="td1" id="dsp"><font style="color:#CE9265"><b>${count1}</b></font></td>
				</tr>
				<tr height="40px">
					<td class="td1">【待派车】用车申请</td>
					<td align="right" class="td1" id="dpc">${count2}</td>
				</tr>
				<tr height="40px">
					<td class="td1">【待出车】用车申请</td>
					<td align="right" class="td1" id="dcc">${count3}</td>
				</tr>
				<tr height="40px">
					<td class="td1">【待完成】用车申请</td>
					<td align="right" class="td1" id="dwc">${count4}</td>
				</tr>
				<tr height="40px">
					<td class="td1"></td>
					<td class="td1"></td>
				</tr>
			</table>
		</div>
		<!--驾驶员状态-->
		<div class="div13" id="div16" align="center">
			<font color="#FFFFFF"><b>驾驶员状态（今天）</b></font>
		</div>
		<div id="div17">
			<table class="table2" cellspacing="0px" width="500px">
				<tr height="40px">
					<td class="td1">驾驶员总数</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">驾驶员空闲</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">已派车</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">出车</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">缺勤</td>
					<td class="td1"></td>
				</tr>
			</table>
		</div>
		<!--到期提醒-->
		<div class="div13" id="div18" align="center">
			<font color="#FFFFFF"><b>到期提醒</b></font>
		</div>
		<div id="div19">
			<table class="table2" cellspacing="0px" width="500px">
				<tr height="40px">
					<td class="td1">驾照到期提醒</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">车辆保险到期提醒</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">车辆违章提醒</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">车辆年检到期提醒</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1"></td>
					<td class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1"></td>
					<td class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1"></td>
					<td class="td1"></td>
				</tr>
			</table>
		</div>
		<!--车辆状态-->
		<div class="div13" id="div20" align="center">
			<font color="#FFFFFF"><b>车辆状态（今天）</b></font>
		</div>
		<div id="div21">
			<table class="table2" cellspacing="0px" width="500px">
				<tr height="40px">
					<td class="td1">车辆总数</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">空闲</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">已派车</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">出车</td>
					<td align="right" class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">维修</td>
					<td class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">启动</td>
					<td class="td1"></td>
				</tr>
				<tr height="40px">
					<td class="td1">停止</td>
					<td class="td1"></td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>