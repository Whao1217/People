<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加人口信息</title>
<style type="text/css">


.button {
    width: 100px;
	height: 40px;
	background-color: #009688;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 22px;
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



</style>
</head>
<script type="text/javascript">
function show() {
    location.href = "show.jsp";
}
</script>
<body>
<%
	Object message=request.getAttribute("message");
	if(message!=null&&!"".equals(message)){
		%>
	
	<script type="text/javascript">
		
	</script>
 <%}%>

	    <div class="form-group"><h2 class="logtip">结果</h2></div>
	
	    
	
		<table>
		        
		        
		        <div class="form-group">
                    <label for="people"><%=request.getAttribute("message")%></label> 
                </div>	
              
                
                <div class="form-group">
		            <button class="button" type="button" onclick="show()">查看信息</button>
		        </div>
		     
                
               
		</table>
  			

</body>

</html>