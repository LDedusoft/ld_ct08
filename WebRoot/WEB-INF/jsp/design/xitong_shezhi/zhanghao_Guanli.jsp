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
        <div class="easyui-panel" style="width:400px">
            <div style="padding:10px 60px 20px 60px">
                <form id="ff" method="post">
                    <table cellpadding="5">
                        <tr>
                            <td>Name:</td>
                            <td><input class="easyui-textbox" type="text" name="用户名" data-options="required:true"></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input class="easyui-textbox" type="text" name="密码" data-options="required:true,validType:'email'"></td>
                        </tr>
                        <tr>
                            <td>Subject:</td>
                            <td><input class="easyui-textbox" type="text" name="确认密码" data-options="required:true"></td>
                        </tr>
                        <tr>
                            <td>Message:</td>
                            <td><input class="easyui-textbox" name="真实姓名" data-options="multiline:true" style="height:60px"></td>
                        </tr>
                        <tr>
                            <td>Language:</td>
                            <td>
                                <select class="easyui-combobox" name="性别"><option value="ar">男</option><option value="bg">女</option></select>
                            </td>
                        </tr>
                    </table>
                </form>
                <div style="text-align:center;padding:5px">
                    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
                </div>
            </div>
        </div>
        <script>
            function submitForm(){
            $('#ff').form('submit');
            }
            function clearForm(){
            $('#ff').form('clear');
            }
        </script>
    </body>
    </html>