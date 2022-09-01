<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List" %>
    <%@page import="bean.info" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<style type="text/css">
    .button{
				width: 80px;
				height: 30px;
				background-color: #009688;
				color: white;
				border: none;
				border-radius: 5px;
				font-size: 12px;
			}
</style>
<script type="text/javascript">
/* function add() {
    location.href = "add.jsp";
} */
function load(){
	
	
	$.ajax({
		type:"post",
		url:"show?method=show",
		
		success: function(data){
			$(data).each(
					
                    function (i, values) {
                        $("#list").append(
                            "<tr><td>"+(++i)+"</td>"
                            +"<td>"+values.residenceType+"</td>"
                            +"<td>"+values.housingType+"</td>"
                            +"<td>"+values.housingArea+"平方米</td>"
                            +"<td>"+values.numberOfrooms+"间</td>"
                            +"<td>"+values.nameOfhouseholder+"</td>"
                            +"<td>"+values.idCard+"</td>"
                            +"<td>"+values.sex+"</td>"
                            +"<td>"+values.nation+"</td>"
                            +"<td>"+values.education+"</td></tr>"
                            /* +"<td><a href='oldServlet?method=del&pname=${data[i].name}'><small>删除</small></td>" */
                            
                        );
                    });
			  
		},
		dataType:"json"
	});
}
function checkAll(){
	   return true;
}
window.onload=load
</script>
<body>

<h1>信息列表</h1>

<table class="table table-striped">

    <thead>
    
    <!-- <tr>
        <td colspan=9><button class="button" type="button" onclick="add()">添加信息</button></td>
    </tr> -->
    <tr>
      <th scope="col">#</th>
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

</table>

</body>
</html>