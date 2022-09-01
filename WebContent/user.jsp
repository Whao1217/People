<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>后台布局</title>
  <link rel="stylesheet" href="layui/layui.css" >
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">人口普查系统</div>

    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item"><a href="shouye.jsp" target="frame">回到首页</a></li>
      <li class="layui-nav-item">
      用户：<%= session.getAttribute("account")%>

      </li>
      <li class="layui-nav-item"><a href="login.jsp">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        
        
        <li class="layui-nav-item">
          <a href="add.jsp" target="frame">信息登记</a>
        </li>
        <li class="layui-nav-item">
          <a href="changeName.jsp" target="frame">信息修改</a>
        </li>
        <li class="layui-nav-item">
          <a href="delete.jsp" target="frame">信息删除</a>
        </li>
        <li class="layui-nav-item">
          <a href="select.jsp" target="frame">信息查询</a>
        </li>
        <li class="layui-nav-item">
          <a href="show.jsp" target="frame">信息浏览</a>
        </li>
       
      </ul>
    </div>
  </div>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 0px" >
    <iframe id="righFrame" name="frame"  width="100%" height="1000px" scrolling="no"  style="border:1px solid #CCC;"></iframe>
    </div>
  </div>
  <div class="layui-footer">
    <!-- 底部固定区域 -->
               底部边界
  </div>
</div>
<script src="layui/layui.all.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>
      