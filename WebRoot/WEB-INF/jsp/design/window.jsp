
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
	<title>Basic Dialog - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/icon.css">
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>

	
</head>
<body>
	<h2>Window Border Style</h2>
	<p>This example shows how to set the different border style.</p>
	<div style="margin:20px 0;">
	</div>
	<div style="position:relative;overflow:auto;height:370px;border:1px solid #ddd">
		<div class="easyui-window" title="Window" data-options="width:300,height:150,left:10,top:10,inline:true">
			<p class="w-content">Window content</p>
		</div>
		<div class="easyui-window" title="Window" data-options="width:300,height:150,left:320,top:10,inline:true,cls:'c1'">
			<p class="w-content">Window content</p>
		</div>
		<div class="easyui-window" title="Window" data-options="width:300,height:150,left:630,top:10,inline:true,cls:'c2'">
			<p class="w-content">Window content</p>
		</div>
		<div class="easyui-window" title="Window" data-options="width:300,height:150,left:10,top:180,inline:true,border:'thin',cls:'c5'">
			<p class="w-content">Window content</p>
		</div>
		<div class="easyui-window" title="Window" data-options="width:300,height:150,left:320,top:180,inline:true,border:'thin',cls:'c6'">
			<p class="w-content">Window content</p>
		</div>
		<div class="easyui-window" title="Window" data-options="width:300,height:150,left:630,top:180,inline:true,border:'thin',cls:'c7'">
			<p class="w-content">Window content</p>
		</div>
	</div>

	
	<style type="text/css" scoped="scoped">
		.w-content{
			padding:5px 10px;
		}
	</style>
	
</body>
</html>