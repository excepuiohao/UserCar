<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
  <table>
   <sf:form action="insertCar" modelAttribute="thecar" method="post"> 
  
    <tr>
      <td colspan="4" align="center">新增车辆信息</td>
    </tr>
    <tr>
      <td class="car_td1" align="right">车牌号码:</td>
      <td class="car_td2">
      <sf:input path="car_id"/><sf:errors path="car_id"></sf:errors>
      </td>
      <td class="car_td1"></td>
      <td class="car_td2"></td>
    </tr>
    <tr>
      <td class="car_td1" align="right">所属车队:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_fleet"/> -->
      <sf:input path="car_fleet"/><sf:errors path="car_fleet"></sf:errors>
      </td>
      <td class="car_td1"></td>
      <td class="car_td2"></td>
    </tr>
    <tr>
      <td class="car_td1" align="right">车辆配置:</td>
      <td colspan="3">
      <!-- <input type="text" name="car_configer"/> -->
            <sf:input path="car_configer"/><sf:errors path="car_configer"></sf:errors>
      
      </td>
    </tr>
    <tr>
      <td class="car_td1" align="right">价格（元）:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_price" /> -->
            <sf:input path="car_price"/><sf:errors path="car_price"></sf:errors>
      
      </td>
      <td class="car_td1" align="right">原有部门:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_department"/> -->
            <sf:input path="car_department"/><sf:errors path="car_department"></sf:errors>
      
      </td>
    </tr>
    <tr>
      <td class="car_td1" align="right">省市区:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_address"/> -->
            <sf:input path="car_address"/><sf:errors path="car_address"></sf:errors>
      
      </td>
      <td class="car_td1" align="right">发证机关:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_office"/> -->
            <sf:input path="car_office"/><sf:errors path="car_office"></sf:errors>
      
      </td>
    </tr>
    <tr>
      <td class="car_td1" align="right">车牌颜色:</td>
      <td class="car_td2">
     <!--  <input type="text" name="car_ccolor"/> -->
            <sf:input path="car_ccolor"/><sf:errors path="car_ccolor"></sf:errors>
      
      </td>
      <td class="car_td1" align="right">车牌分类:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_ctype"/> -->
            <sf:input path="car_ctype"/><sf:errors path="car_ctype"></sf:errors>
      
      </td>
    </tr>
    <tr>
      <td class="car_td1" align="right">车辆颜色:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_color"/> -->
            <sf:input path="car_color"/><sf:errors path="car_color"></sf:errors>
      
      </td>
      <td class="car_td1" align="right">车辆类型:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_type"/> -->
            <sf:input path="car_type"/><sf:errors path="car_type"></sf:errors>
      
      </td>
    </tr>
    <tr>
      <td class="car_td1" align="right">ETC:</td>
      <td class="car_td2">
      <!-- <input type="text" name="etc"/> -->
            <sf:input path="etc"/><sf:errors path="etc"></sf:errors>
      
      </td>
      <td class="car_td1" align="right">车架号:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_chassis"/> -->
            <sf:input path="car_chassis"/><sf:errors path="car_chassis"></sf:errors>
      
      </td>
    </tr>
    <tr>
      <td class="car_td1" align="right">初始里程:</td>
      <td class="car_td2">
       <input type="text" name="car_beginkm"/> 
          <%--   <sf:input path="car_beginkm"/><sf:errors path="car_beginkm"></sf:errors> --%>
      
      </td>
      <td class="car_td1" align="right">运营证号:</td>
      <td class="car_td2">
      <!-- <input type="text" name="car_operations"/> -->
            <sf:input path="car_operations"/><sf:errors path="car_operations"></sf:errors>
      
      </td>
    </tr>
      <tr>
      <td class="car_td1" align="right">车辆状态:</td>
      <td class="car_td2">
      <input type="text" name="car_status" value="新增"/> 
      <!-- <input type="hidden" name="dri_status" value="新增"/> -->
          <%--   <sf:input path="car_status"/><sf:errors path="car_status"></sf:errors> --%>
   <!--          <select name="dri_status"> 
      <option></option>
      <option>新增</option>
      </select>-->
      </td>
      <td class="car_td1" align="right">驾驶员ID:</td>
      <td class="car_td2">
      <!-- <input type="text" name="dri_id"/>  -->
       <!-- <a href="findDriver">请选择</a> --> 
      <select name="dri_id"> 
      <option></option>
      <%List<String> list=(List<String>)session.getAttribute("list");
        if (list != null) {
    		for (int i = 0; i < list.size(); i++) {
      %>
      <option><%=list.get(i)%></option>
<%}} %>
      </select>
      <%--  <sf:input path="dri_id"/><sf:errors path="dri_id"></sf:errors> --%>
      
      </td>
    </tr>
    <tr>
      <td class="car_td1" align="right">购车时间:</td>
      <td colspan="3">
      <input type="date" name="car_buydate"/>
           <%--  <sf:input path="car_buydate"/><sf:errors path="car_buydate"></sf:errors> --%>
      
      </td>
    </tr>

    <tr>
      <td colspan="2" align="center"><button type="submit">保存</button>
      </sf:form></td>
        <td colspan="2" align="center"><form action="CarManager.jsp">
        <button type="submit">取消</button></form>
        </td>
    </tr>
  </table>
</div>

</body>
</html>