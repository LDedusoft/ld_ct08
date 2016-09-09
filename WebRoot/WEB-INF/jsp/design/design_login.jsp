﻿<%@ page isELIgnored="false" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String resultUserName= (String)request.getAttribute("userName");
String resultPassword= (String)request.getAttribute("password");
String resultType= (String)request.getAttribute("type");
String resultError = (String)request.getAttribute("error");
request.removeAttribute("error");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="<%=basePath%>/uimaker/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=basePath%>uimaker/js/jquery.js"></script>
<script language="JavaScript" src="<%=basePath%>js/loginUtils.js"></script>
<script src="<%=basePath%>uimaker/js/cloud.js" type="text/javascript"></script>

<script language="javascript">

	$(function(){

    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
    
    if("<%=resultError%>"!="null"){
    //如果有错误信息 重新设置用户名密码和用户类型
	$("#userName").val("<%=resultUserName%>");
	$("#password").val("");
	$("#type").find("option[text='<%=resultType%>']").attr("selected",true);
	alert("<%=resultError%>");
}
	
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">


    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    
    <ul>
    <form id="loginForm" method = 'post'  action = 'loginAction' >
    <li><input id="userName" name="userName" type="text" class="loginuser" value="admin"  onclick="JavaScript:this.value=''"/></li>
    <li><input id="password" name="password" type="password" class="loginpwd" value="123456" onclick="JavaScript:this.value=''"/></li>
    <li><select id="type" name="type" class="loginuser" style="width:343px;">
	  <option value ="管理员">管理员</option>
	  <option value ="主考">主考</option>
	  <option value="监考">监考</option>
	</select></li>
    <li><input name="" type="button" class="loginbtn" value="登录"  onclick="loginAction();"  /></li>
    </form>
    </ul>
    
    
    </div>
    
    </div>
    
    
    
    <div class="loginbm">版权所有  2013  <a href="http://www.mycodes.net">源码之家</a> </div>
	
    
</body>

</html>
