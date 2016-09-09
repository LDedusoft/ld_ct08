<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/style/style.css">
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>

</head>
<body>
    <div id="p" class="easyui-panel" style="width:100%;height:550px;padding:0px;" title="系统设置">
    <%--<div id="p" class="headTitle" title="试题管理" style="width:100%;height:30px;">系统设置</div>--%>
    <div id="backHome" style="width:100%;height:30px;">
        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-back'" style="width:80px;margin-left:2px;margin-top:2px;">返回首页</a>
    </div>
    <div class="easyui-tabs" style="width:100%;height:484px;">
        <div title="主考管理">
            <iframe style="width:100%;height:450px;" scrolling="no" frameborder="0"  src="zhuKaoGuanLi"></iframe>
        </div>
        <div title="监考管理">
             <iframe style="width:100%;height:450px;" scrolling="no" frameborder="0" src="jianKaoGuanLi"></iframe>
        </div>
        <div title="账号管理">
            <iframe style="width:100%;height:450px;" scrolling="no" frameborder="0" src="zhangHaoGuanLi"></iframe>
         </div>
        <div title="学校管理">
            <iframe style="width:100%;height:450px;" scrolling="no" frameborder="0" src="xueXiaoGuanLi"></iframe>
        </div>
    </div>
    </div>
</body>
</html>