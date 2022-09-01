<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="bean.info" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
 <%
      info b2=(info)request.getAttribute("info");
   %>
   
   <script type="text/javascript">

function check()                        //封装一个<body>中做成点击事件的函数
{
	
	if(document.getElementById('housingArea').value=='') {
		  alert('现住房面积不能为空！');
		  document.getElementById('housingArea').focus();
		  isInterger(housingArea);
		  return false;
		 }
	else if(document.getElementById('housingArea').value%1!=0){
		alert('住房面积不是整数！');
		return false;
	}
	if(document.getElementById('numberOfrooms').value=='') {
		  alert('现住房间数不能为空！');
		  document.getElementById('numberOfrooms').focus();
		  return false;
		 }
	else if(document.getElementById('numberOfrooms').value%1!=0){
		alert('现住房间数不是整数！');
		return false;
	}
	if(document.getElementById('nameOfhouseholder').value=='') {
		  alert('户主姓名不能为空！');
		  document.getElementById('nameOfhouseholder').focus();
		  return false;
		 }
	
	if(document.getElementById('idCard').value.length!=18) {
		  alert('身份证号码位数错误！');
		  document.getElementById('idCard').focus();
		  return false;
		 }
	if(document.getElementById('nation').value=='') {
		  alert('民族不能为空！');
		  document.getElementById('nation').focus();
		  return false;
		 }
}

</script>
<body>

<form action="updatenewServlet"  method="post" onsubmit= "return check()" >	
<table>
  <h4>修改前信息：</h4>
  	<tr>
  		<td><label for="sex">户别：</label></td>
  		<td><input type="text" name="residenceType" class="form-control" value="<%=b2.getResidenceType()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">住房类型：</label></td>
  		<td><input type="text" name="housingType" class="form-control"  value="<%=b2.getHousingType()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">本户现住房面积：</label></td>
  		<td><input type="text" name="housingArea" class="form-control" value="<%= b2.getHousingArea()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">本户现住房间数：</label></td>
  		<td><input type="text" name="numberOfrooms" class="form-control" value="<%= b2.getNumberOfrooms()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">户主姓名：</label></td>
  		<td><input type="text" name="nameOfhoseholder" class="form-control" value="<%= b2.getNameOfhouseholder()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">身份证号码：</label></td>
  		<td><input type="text" class="form-control" name="" value="<%= b2.getIdCard()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">性别：</label></td>
  		<td><input type="text" class="form-control" name="" value="<%= b2.getSex()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">民族：</label></td>
  		<td><input type="text" class="form-control" name="" value="<%= b2.getNation()%>"></td>
  	</tr>
  	<tr>
  		<td><label for="sex">受教育程度：</label></td>
  		<td><input type="text" class="form-control" name="" value="<%= b2.getEducation()%>"></td>
  	</tr>
  	
 	
  </table>
  <hr/>
  <h4>修改信息</h4>
  <table>
		
		    <div class="form-group">
		        <label for="idCard">身份证号</label> <input type="text"
                        class="form-control" id="idCard" name="idCard" value="">
            </div>
            <div class="form-group">
                <label for="sex">性别</label> <input type="radio" name="sex" value="男">男
			    <input type="radio" name="sex" value="女">女</p>
            </div>
            <div class="form-group">
                <label for="nation">民族</label> <input type="text"
                    class="form-control" id="nation" name="nation" value="">
            </div>
                
            <div class="form-group">
                <label for="education">受教育程度</label> 
                        <select name="education" value="" class="option">
                        <option selected= "selected" >请选择</option>
                        <option>研究生</option>
                        <option>大学本科</option>
                        <option>大学专科</option>
                        <option>高中</option>
                        <option>初中</option>
                        <option>小学</option>
                        <option>未上学</option> 
                    </select>
            </div>
                
                
            <div class="btnbag">
                <button type="submit" class="button">确认</button>
            </div>
		
		</table>

  </form>
</body>


</html>