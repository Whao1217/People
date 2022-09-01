<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询</title>

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
<script>
var i=1;
var j=1;
document.getElementById('number1').value=i;
document.getElementById('number2').value=j;
function demoDisplay(){
	if(document.getElementById("p2").style.display=="none"){
		i++;
		j++;
		document.getElementById("p2").style.display="inline";//inline是显示出来内容，none是不显示出来内容
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
// 		alert(i);
// 		alert(j);
		return;
	}else if(document.getElementById("p3").style.display=="none")
		{
			i++;
			j++;
			document.getElementById("p3").style.display="inline";
			document.getElementById('number1').value=i;
			document.getElementById('number2').value=j;
// 			alert(i);
// 			alert(j);
			return;
		}else if(document.getElementById("p4").style.display=="none")
		{
			i++;
			j++;
			document.getElementById("p4").style.display="inline";
			document.getElementById('number1').value=i;
			document.getElementById('number2').value=j;
// 			alert(i);
// 			alert(j);
			return;
		}else if(document.getElementById("p5").style.display=="none")
		{
			i++;
			j++;
			document.getElementById("p5").style.display="inline";
			document.getElementById('number1').value=i;
			document.getElementById('number2').value=j;
// 			alert(i);
// 			alert(j);
			return;
		}
		else if(document.getElementById("p6").style.display=="none")
		{
			i++;
			j++;
			document.getElementById("p6").style.display="inline";
			document.getElementById('number1').value=i;
			document.getElementById('number2').value=j;
// 			alert(i);
// 			alert(j);
			return;
		}
		else if(document.getElementById("p7").style.display=="none")
		{
			i++;
			j++;
			document.getElementById("p7").style.display="inline";
			document.getElementById('number1').value=i;
			document.getElementById('number2').value=j;
// 			alert(i);
// 			alert(j);
			return;
		}
}
function demoVisibility(){
	 if(document.getElementById("p7").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p7").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}
	else if(document.getElementById("p6").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p6").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}
else if(document.getElementById("p5").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p5").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}else if(document.getElementById("p4").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p4").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}else if(document.getElementById("p3").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p3").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}else if(document.getElementById("p2").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p2").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}
}
</script>

</head>
<body>
<%
	Object message=request.getAttribute("message");
	if(message!=null&&!"".equals(message)){
		%>
	
	<script type="text/javascript">
		alert("<%=request.getAttribute("message")%>");
	</script>
 <%}%>
<form  action="vagueServlet" method="post">
<br>
&nbsp;&nbsp;
      <div class="btnbag">
           <button type="button" onclick="demoDisplay()" class="button"><i class="layui-icon">+</i></button>
           <button type="button" onclick="demoVisibility()" class="button"><i class="layui-icon">-</i></button>
      </div>
<!-- <button type="button" onclick="demoDisplay()" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">+</i></button>
<button type="button" onclick="demoVisibility()" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">-</i></button><br>
 -->
&nbsp;&nbsp;
<div id="p1">
&nbsp;&nbsp;
	<select name="g22" style="visibility:hidden" class="slect">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s1" class="option">
	<option>姓名</option>
	<option>性别</option>
	<option>民族</option>
	<option>受教育程度</option>
	</select>
	<input type="text" name="shuru1" class="form-control" value="" />
	<select name="c1" class="option">
	<option>精确</option>
	<option>模糊</option>
	</select>
	<br>
</div>

<div id="p2" style="display:none">
&nbsp;&nbsp;
	<select name="g1" class="option">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s2" class="option">
	<option>姓名</option>
	<option>性别</option>
	<option>民族</option>
	<option>受教育程度</option>
	</select>
	<input type="text" name="shuru2" class="form-control" value="" />
	<select name="c2" class="option">
	<option>精确</option>
	<option>模糊</option>
	</select>
	<br>
</div>

<div id="p3" style="display:none">
&nbsp;&nbsp;
<select name="g2" class="option">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s3" class="option">
	<option>姓名</option>
	<option>性别</option>
	<option>民族</option>
	<option>受教育程度</option>
	</select>
	<input type="text" name="shuru3" class="form-control" value="" />
	<select name="c3" class="option">
	<option>精确</option>
	<option>模糊</option>
	</select>
	<br>
</div>

<div id="p4" style="display:none">
&nbsp;&nbsp;
<select name="g3" class="option">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s4" class="option">
	<option>姓名</option>
	<option>性别</option>
	<option>民族</option>
	<option>受教育程度</option>
	</select>
	<input type="text" name="shuru4" class="form-control" value="" />
	<select name="c4" class="option">
	<option>精确</option>
	<option>模糊</option>
	</select>
	<br>
</div>

<div id="p5" style="display:none">
&nbsp;&nbsp;
<select name="g4" class="option">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s5" class="option">
	<option>姓名</option>
	<option>性别</option>
	<option>民族</option>
	<option>受教育程度</option>
	</select>
	<input type="text" name="shuru5" class="form-control" value="" />
	<select name="c5" class="option">
	<option>精确</option>
	<option>模糊</option>
	</select>
</div>
<br/>
<div id="p6" style="display:none">
&nbsp;&nbsp;
<select name="g5" class="option">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s6" class="option">
	<option>姓名</option>
	<option>性别</option>
	<option>民族</option>
	<option>受教育程度</option>
	</select>
	<input type="text" name="shuru6" class="form-control" value="" />
	<select name="c6" class="option">
	<option>精确</option>
	<option>模糊</option>
	</select>
</div>
<br/>
<div id="p7" style="display:none">
&nbsp;&nbsp;
<select name="g6" class="option">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s7" class="option">
	<option>姓名</option>
	<option>性别</option>
	<option>民族</option>
	<option>受教育程度</option>
	</select>
	<input type="text" name="shuru7" class="form-control" value="" />
	<select name="c7" class="option">
	<option>精确</option>
	<option>模糊</option>
	</select>
</div>
<p hidden>
<input type="text" value="1" class="form-control" id="number1" name="number1">
<input type="text" value="1" class="form-control" id="number2" name="number2">
</p>
<br>
                <div class="btnbag">
                    <button type="submit" class="button" onclick="submit()">确认</button>
                </div>
    <!-- <input type="submit" name="submit" value="查询" > -->
  </form>
  <br>
<h4 align="left">
<%--  一共查询到了<span style="color:red"><%=list.size() %></span>条数据  --%>
</h4>


</body>
</html>