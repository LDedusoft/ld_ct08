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
    <div id="tt" class="easyui-tabs" style="width:100%;height:484px;">
        <div title="主考管理">
            <iframe id="zk" style="width:100%;height:450px;" scrolling="no" frameborder="0" src=""></iframe>
        </div>
        <div title="监考管理">
             <iframe id="jk" style="width:100%;height:450px;" scrolling="no" frameborder="0" src=""></iframe>
        </div>
        <div title="账号管理">
            <iframe id="zh" style="width:100%;height:450px;" scrolling="no" frameborder="0" src=""></iframe>
         </div>
        <div title="学校管理">
            <iframe id="xx" style="width:100%;height:450px;" scrolling="no" frameborder="0" src=""></iframe>
        </div>
    </div>
    </div>
    <script>
    $('#tt').tabs({
        border:false,
        onSelect:function(title){
            var tab = $('#tt').tabs('getSelected');
            var index = $('#tt').tabs('getTabIndex',tab);
            var win;
            switch(index){
            case 0:
                win = document.getElementById("zk");
                if(win.src.indexOf("zhuKaoGuanLi")==-1){
                    win.src="zhuKaoGuanLi";
                }
            break;
            case 1:
                win = document.getElementById("jk");
                if(win.src.indexOf("jianKaoGuanLi")==-1){
                win.src="jianKaoGuanLi";
                }
            break;
            case 2:
                win = document.getElementById("zh");
                if(win.src.indexOf("zhangHaoGuanLi")==-1){
                win.src="zhangHaoGuanLi";
                }
            break;
            case 3:
                win = document.getElementById("xx");
                if(win.src.indexOf("xueXiaoGuanLi")==-1){
                win.src="xueXiaoGuanLi";
                }
            break;
            }
        }
    });

    </script>
</body>
</html>