<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet"
    href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css"> -->
<script type="text/javascript" language="javascript" src="js/jquery-1.7.2.min.js" ></script>
<style type="text/css">

/* .container {
    width: 1000px;
    height: 700px;
    /* position: relative; */
    margin: 0 auto;
    /* background: url("images/background.png") no-repeat center/cover; */
    background: #66CDAA;
} */


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
<body>
    <%
          Object message = request.getAttribute("message");
          if(message!=null && !"".equals(message)){
      
     %>
    <script type="text/javascript">
               alert("<%=request.getAttribute("message")%>");
          </script>
    <%} %>
    
<!--     <div class="container"> -->
        <div class="login">
            <h2 class="logtip">添加</h2>
            <form action="Servlet?method=add" method="post" onsubmit="return check()">
            
            <div class="form-group">
                    <label for="residenceType">户别</label> 
                     <input type="radio" name="residenceType" id="residenceType" value="家庭户">家庭户
			         <input type="radio" name="residenceType" id="residenceType" value="集体户">集体户
			        
                </div>
                
                <div class="form-group">
                    <label for="housingType">住房类型</label> 
                    <input type="radio" name="housingType" id="housingType" value="家庭住宅">家庭住宅
			        <input type="radio" name="housingType" id="housingType" value="集体住所">集体住所
			        <input type="radio" name="housingType" id="housingType" value="工作地住所">工作地住所
			        <input type="radio" name="housingType" id="housingType" value="其他住宅">其他住宅
			        <input type="radio" name="housingType" id="housingType" value="无住宅">无住宅</p>
			        
                </div>
                
                <div class="form-group">
                    <label for="housingArea">本户现住房面积</label> <input type="text"
                        class="form-control" id="housingArea" name="housingArea" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')">平方米
                </div>
                
                <div class="form-group">
                    <label for="numberOfrooms">本户现住房间数</label> <input type="text"
                        class="form-control" id="numberOfrooms" name="numberOfrooms" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')">间
                </div>
                
                <div class="form-group">
                    <label for="nameOfhouseholder">户主姓名</label> <input type="text"
                        class="form-control" id="nameOfhouseholder" name="nameOfhouseholder">
                </div>
                
                <div class="form-group">
                    <label for="idCard">身份证号码</label> <input type="text"
                        class="form-control" id="idCard" name="idCard" onblur="isCardNo(this.value)">
                </div>
                
                <div class="form-group">
                    <label for="sex">性别</label> 
                    <input type="radio" name="sex" value="男">男
			        <input type="radio" name="sex" value="女">女</p>
			    </div>
			    
			    <div class="form-group">
                    <label for="nation">民族</label> <input type="text"
                        class="form-control" id="nation" name="nation">
                </div>
			    
			    <div class="form-group">
                    <label for="education">受教育程度</label> 
                        <select name="education" id="education" class="option">
                        <option selected="selected" value="">请选择</option>
                        <option>研究生</option>
                        <option>大学本科</option>
                        <option>大学专科</option>
                        <option>高中</option>
                        <option>初中</option>
                        <option>小学</option>
                        <option>未上学</option> 
                    </select>
                </div>
                
                <div class="form-group">
                    <button type="submit" class="button">确认</button>
                </div>
            </form>
        </div>
<!--     </div> -->
</body>
<script type="text/javascript">
function check()                        //封装一个<body>中做成点击事件的函数
{
	
	if($('input:radio[name="residenceType"]:checked').val()==null) {
		  alert('户别不能为空！');
		  document.getElementById('residenceType').focus();
		  return false;
		 }
	if($('input:radio[name="housingType"]:checked').val()==null) {
		  alert('住房类型不能为空！');
		  document.getElementById('housingType').focus();
		  return false;
		 }
	if($('input:radio[name="sex"]:checked').val()==null) {
		  alert('性别不能为空！');
		  document.getElementById('sex').focus();
		  return false;
		 }
	if(document.getElementById('housingArea').value=='') {
		  alert('现住房面积不能为空！');
		  document.getElementById('housingArea').focus();
		  isInterger(housingArea);
		  return false;
		 }
	
	if(document.getElementById('numberOfrooms').value=='') {
		  alert('现住房间数不能为空！');
		  document.getElementById('numberOfrooms').focus();
		  return false;
		 }
	
	if(document.getElementById('nameOfhouseholder').value=='') {
		  alert('户主姓名不能为空！');
		  document.getElementById('nameOfhouseholder').focus();
		  return false;
		 }
	
	
	if(document.getElementById('nation').value=='') {
		  alert('民族不能为空！');
		  document.getElementById('nation').focus();
		  return false;
		 }
	 if(document.getElementById('education').value=='') {
		  alert('受教育程度不能为空！');
		  document.getElementById('education').focus();
		  return false;
		 }
	return true;
}
function isCardNo(card) 
{ 
  // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X 
  var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
  if(reg.test(card) === false) 
  { 
    alert("身份证输入不合法"); 
    document.getElementById('useridentity').value="";
  } 
}


    /* function check() {
        var nameOfhouseholder = document.getElementById("nameOfhouseholder").value;
        var housingType = document.getElementById("housingType").value;
        var housingArea = document.getElementById("housingArea").value;
        var idCard = document.getElementById("idCard").value;
        if ((nameOfhouseholder == "")) {
            alert("必填!");
            return false;
        }else if(!(/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test(idCard))){
        	alert("身份证号不正确!");
            return false;
        }
        return true;
    } */
</script>
</html>