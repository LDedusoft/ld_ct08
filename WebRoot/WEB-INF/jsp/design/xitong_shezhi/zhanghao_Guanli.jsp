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
        <div style="width:400px">
            <div style="padding:10px 60px 20px 60px">
                <form id="ff" method="post">
                    <table cellpadding="5">
                        <tr>
                            <td><img style="width:80px;height:80px;margin:20px 0 0 0;" src="2.jpg"></td>
                            <td>
                                <div style="width:200px;padding:30px 70px 20px 0px">
                                    <input id="fb" class="easyui-filebox" name="file1" data-options="prompt:'文件位置'" style="width:60%">
                                </div>
                                <div>
                                <a href="#" class="easyui-linkbutton" style="width:25%">上传图片</a>
                                </div>
                            </td>
                        <tr>
                            <td>用户名:</td>
                            <td><input class="easyui-textbox" type="text" name="name" data-options="required:true"></td>
                        </tr>
                        <tr>
                            <td>密码:</td>
                            <td><input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'"></td>
                        </tr>
                        <tr>
                            <td>确认密码:</td>
                            <td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></td>
                        </tr>
                        <tr>
                            <td>真实姓名:</td>
                            <td><input class="easyui-textbox" type="text" name="message" data-options="required:false"></td>
                        </tr>
                        <tr>
                            <td>性别:</td>
                            <td>
                            <select id="sex" class="easyui-combobox" name="language" style="width:50px;"><option value="ar">男</option><option value="bg">女</option></select>
                            </td>
                        </tr>
                        <tr>
                        <td>所属学校:</td>
                        <td>
                        <select id="school" class="easyui-combobox" name="language" style="width:80px;">
                            <option value="ld">龙鼎学院</option>
                            <option value="jt">交通学院</option>
                            <option value="qf">奇峰学院</option>
                            <option value="ls">乐视学院</option>
                        </select>
                        </td>
                        </tr>
                        <tr>
                        <td>电话:</td>
                        <td><input class="easyui-textbox" name="message" data-options="required:true"></td>
                        </tr>
                    </table>
                </form>
                <div style="text-align:center;padding:5px">
                    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">编辑</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">保存</a>
                </div>
            </div>
        </div>
        <script>
            var sexNum = document.getElementById("sex").options.length;
            var schoolNum = document.getElementById("school").options.length;
            $("#sex").combobox({panelHeight:20*sexNum});
            $("#school").combobox({panelHeight:20*schoolNum});
            $('#fb').filebox({
            buttonText: '选择图片',
            buttonAlign: 'left'
            })
            function submitForm(){
            $('#ff').form('submit');
            }
            function clearForm(){
            $('#ff').form('clear');
            }
        </script>
    </body>
    </html>