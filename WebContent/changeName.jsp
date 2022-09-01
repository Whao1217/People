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

.container {
    width: 1000px;
    height: 1000px;
    /* position: relative; */
    margin: 0 auto;
}

.logtip {
    /* padding-top: 5px; */
    padding-left: 20px;
    /* padding-bottom: 5px; */
    border-bottom: 2px solid #009688;
    text-align: left;
}

label {
    float: left;
    width: 70px;
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
    /* margin-top: 20px;
    margin-bottom: 20px; */
    /* text-align: center; */
}

.button {
    width: 80px;
	height: 30px;
	background-color: #009688;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 12px;
}

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

<%-- <%
	Object message=request.getAttribute("message");
	if(message!=null&&!"".equals(message)){
		%>
	
	<script type="text/javascript">
		alert("<%=request.getAttribute("message")%>");
	</script>
 <%}%> --%>
 <div class="container">
<form action="updateServlet" method="post" onsubmit="return check()">
	<h2 class="logtip">修改</h2>
	<p>请输入要修改的户主姓名</p>
	    <table>
			<div class="form-group">
			    <label for="nameOfhouseholder">猪猪姓名</label> <input type="text"
                        class="form-control" id="nameOfhouseholder" name="selectname">
            </div>
            
            <div class="btnbag">
                <button type="submit" class="button">确认</button>
            </div>
	    </table>
	    </form>
	    </div>

</body>
</html>