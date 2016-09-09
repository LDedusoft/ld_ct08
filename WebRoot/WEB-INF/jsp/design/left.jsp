<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ld.dbPOJO.TeacherUserInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
TeacherUserInfo userInfo = new TeacherUserInfo();
if(session.getAttribute("userInfo")!=null){
	 userInfo = (TeacherUserInfo)session.getAttribute("userInfo");
}



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=basePath%>/uimaker/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/style/style.css" />
<script language="JavaScript" src="<%=basePath%>/uimaker/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	

function showPage(url){
	parent.document.getElementById("rightFrame").src=url;
}

function logout(){}
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>用户信息</div>
    	<div class="head">
                <div class="header">
                    <div id="Image1_Container" style="display:inline;">
						<img id="Image1" src="<%=basePath%>/uimaker/images/i07.png" style="border: none; width: 56px; height: 66px;"/>
					</div>
                </div>
                <div class="userinfo">
                    <ul>
                        <li>
                            <div id="TextField1_Container" style="display:inline;"><%=userInfo.getUserName() %></div>
                        </li>
                        <li>
                            <div id="TextField2_Container" style="display:inline;"><%=userInfo.getTeacherName() %></div>
                        </li>
                        <li><span></span>
                            <div id="TextField3_Container" style="display:inline;"><%=userInfo.getUserType() %></div>
                        </li>
                    </ul>
                </div>
     </div>
  
    	
    <dl class="leftmenu">
        
    <dd>
    <div class="title" onclick="showPage('shiTiGuanLi')">
    <span><img src="<%=basePath%>/uimaker/images/leftico01.png" /></span>
    <a href="shiTiGuanLi" target="rightFrame">试题管理</a>
    </div>
    </dd>
    <dd>
    <div class="title" onclick="showPage('shiJuanGuanLi')">
    <span><img src="<%=basePath%>/uimaker/images/leftico01.png" /></span>
    <a href="shiJuanGuanLi" target="rightFrame">试卷管理</a>
    </div>
    </dd> 
    <dd>
    <div class="title" onclick="showPage('biSaiGuanLi')">
    <span><img src="<%=basePath%>/uimaker/images/leftico01.png" /></span>
    <a href="biSaiGuanLi" target="rightFrame">比赛管理</a>
    </div>
    </dd> 
    <dd>
    <div class="title" onclick="showPage('duiYuanGuanLi')">
    <span><img src="<%=basePath%>/uimaker/images/leftico01.png" /></span>
    <a href="duiYuanGuanLi" target="rightFrame">参赛队员管理</a>
    </div>
    </dd> 
    <dd>
    <div class="title" onclick="showPage('biSaiTongJi')">
    <span><img src="<%=basePath%>/uimaker/images/leftico01.png" /></span>
    <a href="biSaiTongJi" target="rightFrame">比赛统计</a>
    </div>
    </dd> 
    <dd>
    <div class="title" onclick="showPage('xiTongGuanLi')">
    <span><img src="<%=basePath%>/uimaker/images/leftico01.png" /></span>
    <a href="xiTongGuanLi" target="rightFrame">系统设置</a>
    </div>
    </dd> 
    <dd>
    <div class="title" onclick="logout()">
    <span><img src="<%=basePath%>/uimaker/images/leftico01.png" /></span>
    <a href="javascript:void(0)" target="rightFrame">退出系统</a>
    </div>
    </dd> 
    </dl>
    
</body>
</html>
