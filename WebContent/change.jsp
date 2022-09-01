<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List" %>
    <%@page import="bean.info" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改员信息</title>
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
      info info=(info)request.getAttribute("info");
   %>
<script type="text/javascript">
function back(){
	
}
</script>
<body>
<%
	Object message=request.getAttribute("message");
	if(message!=null&&!"".equals(message)){
		%>
	
	<script type="text/javascript">
		alert("<%=request.getAttribute("message")%>");
	</script>
 <%}%>
 <div class="container">
<form action="updateServlet" method="post" onsubmit="return check()">
	<h2 class="logtip">修改</h2>
	
	    <table>
	        <div class="form-group">请输入要修改的户主姓名</div>
			<div class="form-group">
			    <label for="nameOfhouseholder">户主姓名</label> <input type="text"
                        class="form-control" id="nameOfhouseholder" name="nameOfhouseholder">
            </div>
             <div class="form-group">
                <button type="submit" class="button">确认</button>
            </div>
	    </table>
</form>
</div>
</body>
<script type="text/javascript">
function check()
{
	var name=document.getElementById("name");
	var idnumber=document.getElementById("idnumber");
	if(name.value==""||idnumber.value=="")
		{
		alert("请把信息填写完整！");
		return false;
		}
}
</script>
</html>