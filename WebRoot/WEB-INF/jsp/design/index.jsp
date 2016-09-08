
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
	<h2>Basic Dialog</h2>
	<p>Click below button to open or close dialog.</p>
	<div style="margin:20px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#win').window('open')">Open</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#win').window('close')">Close</a>
	</div>
	<div id="dlg" class="easyui-dialog" title="Basic Dialog" style="width:600px;height:400px"
	 data-options="iconCls:'icon-save',minimizable:true" 
	 style="width:400px;height:200px;padding:10px"
	
	 href="<%=basePath%>window"
	 >
	 
	<div id="win" class="easyui-window" title="My Window" style="width:600px;height:400px"
    data-options="iconCls:'icon-save',modal:true,minimizable:false,collapsible:false"
    closed="true"
    href="window"
    >
	</div>

	</div>
	
	
</body>
</html>