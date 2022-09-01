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
   .a-radio{
            display: inline-block;
            border:1px solid #ccc;
            width:16px;
            height: 16px;
            border-radius:2px;
            vertical-align: middle;
            margin-right: 5px;
            position: relative;
        }

.logtip {
    padding-top: 5px;
    padding-left: 0px;
    /* padding-bottom: 5px; */
    border-bottom: 2px solid #009688;
    text-align: left;
}

label {
    color: #2E8B57;
    font-size:120%;
    float: left;
    width: 150px;
    margin-top: 2px;
    margin-right: 3px;
}

.form-group {
    margin-left: 40px;
    margin-top: 20px;
}

.form-control {
    width: 200px;
    flex: 4;
	height: 30px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #999999;
	/* box-sizing: border-box;//盒子模型，怪异IE盒子模型，width=content+border*2+padding*2 */
	padding-left: 10px;
}

.btnbag{
    margin-top: 20px;
    margin-bottom: 20px;
    /* text-align: center; */
}

.button {
    width: 100px;
	height: 40px;
	background-color: #009688;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 22px;
}
.option{
  /*用div的样式代替select的样式*/
   
    width: 140px;
    height: 40px;
    /*border-radius: 5px;*/
  /*盒子阴影修饰作用,自己随意*/
 /* box-shadow: 0 0 5px #ccc;*/
    border: 1px solid #cccccc;
    position: relative;
    font-size: 18px;
    border-radius: 5px;
  },
  
</style>
<script type="text/javascript">

function load(){
	
	var name=document.getElementById("nameOfhouseholder").value;

	$.ajax({
		type:"post",
		url:"show?method=search",
		data:{name:name},
		success: function(data){
			
			for(var i=0;i<data.length;i++){
				   var tr;
				   tr='<td>'+data[i].residenceType+'</td>'
				   +'<td>'+data[i].housingType+'</td>'
	               +'<td>'+data[i].housingArea+'</td>'
	               +'<td>'+data[i].numberOfrooms+'</td>'
	               +'<td>'+data[i].nameOfhouseholder+'</td>'
	               +'<td>'+data[i].idCard+'</td>'
	               +'<td>'+data[i].sex+'</td>'
	               +'<td>'+data[i].nation+'</td>'
	               +'<td>'+data[i].education+'</td>'
	               +"<td><a href='Servlet?method=del&nameOfhouseholder="+data[i].idCard+"'><small>删除</small></td>";
	              
	               $("#list").append('<tr>'+tr+'</tr>')
				   }
			  
		},
		dataType:"json"
	});
}
function checkAll(){
	   return true;
}
</script>
<body>

<h1>信息列表</h1>

<table class="table table-striped">

    <thead>
    <tr>
        <td colspan=9 align="center"> 户主姓名<input type="text" class="form-control" name="nameOfhouseholder" id="nameOfhouseholder" onblur="checkname()"></td>
    </tr>
    <tr>
        
        <td colspan=9 align="center"><button class="button" type="submit" id="select" onclick="load()">查询</button></td>
    </tr>
    
    <tr>
      
      <th scope="col">户别</th>
      <th scope="col">住房类型</th>
      <th scope="col">本户现住房面积</th>
      <th scope="col">本户现住房间数</th>
      <th scope="col">户主姓名</th>
      <th scope="col">身份证号码</th>
      <th scope="col">性别</th>
      <th scope="col">民族</th>
      <th scope="col">受教育程度</th>
      <th scope="col">操作</th>
    </tr>
  </thead>
  <tbody id="list"> </tbody>

</table>

</body>
</html>