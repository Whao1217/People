<%@ page language="java" contentType="text/html; charse=tUTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息显示页面</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/bootstrap.js"></script>
</head>

<%
	Object message=request.getAttribute("message");
	if(message!=null&&!"".equals(message)){
		%>
	
	<script type="text/javascript">
		alert("<%=request.getAttribute("message")%>");
	</script>
 <%}%>
 
 <body>
<%-- <table>
	<tr>
		<td>户别</td>
		<td>住房类型</td>
		<td>民族</td>
		<td>注册日期</td>
		<td>年龄</td>
		<td>政治面貌</td>
		<td>服务类别</td>
	</tr>
<c:forEach items="${course11}" var="course1">
	<tr>
		<td>${course1.name}</td>
		<td>${course1.sex}</td>
		<td>${course1.minzu}</td>
		<td>${course1.time}</td>
		<td>${course1.age}</td>
		<td>${course1.mianmu}</td>
		<td>${course1.fuwu}</td>
		
	</tr>
		</c:forEach>
</table> --%>
<h1>信息列表</h1>
<table class="table table-striped">

    <thead>
   
    <tr>
      
      <th scope="col">户别</th>
      <th scope="col">住房类型</th>
      <th scope="col">本户现住房面积</th>
      <th scope="col">本户现住房间数 </th>
      <th scope="col">户主姓名</th>
      <th scope="col">身份证号码 </th>
      <th scope="col">性别</th>
      <th scope="col">民族</th>
      <th scope="col">受教育程度</th>
    </tr>
  </thead>
  <tbody id="list"> 
      <c:forEach items="${course11}" var="course1">
	<tr>
		<th>${course1.name}</th>
		<th>${course1.sex}</th>
		<th>${course1.minzu}</th>
		<th>${course1.time}</th>
		<th>${course1.age}</th>
		<th>${course1.mianmu}</th>
		<th>${course1.fuwu}</th>
		
	</tr>
		</c:forEach>
  </tbody>

</table>
</body>
</html>