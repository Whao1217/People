<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="bean.info" %>
    <%@page import="java.util.*" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>

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
          <th>${course1.residenceType }</th>
          <th>${course1.housingType }</th>
          <th>${course1.housingArea }</th>
          <th>${course1.numberOfrooms }</th>
          <th>${course1.nameOfhouseholder }</th>
          <th>${course1.idCard }</th>
          <th>${course1.sex }</th>
          <th>${course1.nation }</th>
          <th>${course1.education }</th>
        </tr>
        </c:forEach>
  
  </tbody>

<%-- <table class="table table-striped">

    <thead>
    
    <!-- <tr>
        <td colspan=9><button class="button" type="button" onclick="add()">添加信息</button></td>
    </tr> -->
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
  <tbody id="list"> </tbody>
<c:forEach items="${course11}" var="course1">
<tr>
<td>${course1.residenceType }</td>
<td>${course1.housingType }</td>
<td>${course1.housingArea }</td>
<td>${course1.numberOfrooms }</td>
<td>${course1.nameOfhouseholder }</td>
<td>${course1.idCard }</td>
<td>${course1.sex }</td>
<td>${course1.nation }</td>
<td>${course1.education }</td>
</tr>
</c:forEach>

</table> --%>
</body>
</html>