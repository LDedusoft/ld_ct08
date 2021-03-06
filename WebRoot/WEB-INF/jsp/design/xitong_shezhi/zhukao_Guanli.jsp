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
    <!-- 分页表格 -->

    <table id="dg"  style="width:100%;height:450px" data-options="
    rownumbers:true,
    singleSelect:true,
    autoRowHeight:false,
    pagination:true,
    pageSize:10,
    toolbar:toolbar
    ">
    <thead>
    <tr>
    <th field="inv" width="80">主考编号</th>
    <th field="date" width="100">主考名称</th>
    <th field="name" width="80">主考性别</th>
    <th field="amount" width="80">手机</th>
    <th field="price" width="80">学校</th>
    </tr>
    </thead>
    </table>
    <script>
    var toolbar = [{
    text:'添加',
    iconCls:'icon-add',
    handler:function(){alert('add')}
    },{
    text:'编辑',
    iconCls:'icon-cut',
    handler:function(){alert('cut')}
    },'-',{
    text:'删除',
    iconCls:'icon-save',
    handler:function(){alert('save')}
    }];
    (function($){


    function pagerFilter(data){
    if ($.isArray(data)){	// is array
    data = {
    total: data.length,
    rows: data
    }
    }
    var target = this;
    var dg = $(target);
    var state = dg.data('datagrid');
    var opts = dg.datagrid('options');
    if (!state.allRows){
    state.allRows = (data.rows);
    }
    if (!opts.remoteSort && opts.sortName){
    var names = opts.sortName.split(',');
    var orders = opts.sortOrder.split(',');
    state.allRows.sort(function(r1,r2){
    var r = 0;
    for(var i=0; i<names.length; i++){
    var sn = names[i];
    var so = orders[i];
    var col = $(target).datagrid('getColumnOption', sn);
    var sortFunc = col.sorter || function(a,b){
    return a==b ? 0 : (a>b?1:-1);
    };
    r = sortFunc(r1[sn], r2[sn]) * (so=='asc'?1:-1);
    if (r != 0){
    return r;
    }
    }
    return r;
    });
    }
    var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
    var end = start + parseInt(opts.pageSize);
    data.rows = state.allRows.slice(start, end);
    return data;
    }

    var loadDataMethod = $.fn.datagrid.methods.loadData;
    var deleteRowMethod = $.fn.datagrid.methods.deleteRow;
    $.extend($.fn.datagrid.methods, {
    clientPaging: function(jq){
    return jq.each(function(){
    var dg = $(this);
    var state = dg.data('datagrid');
    var opts = state.options;
    opts.loadFilter = pagerFilter;
    var onBeforeLoad = opts.onBeforeLoad;
    opts.onBeforeLoad = function(param){
    state.allRows = null;
    return onBeforeLoad.call(this, param);
    }
    var pager = dg.datagrid('getPager');
    pager.pagination({
    onSelectPage:function(pageNum, pageSize){
    opts.pageNumber = pageNum;
    opts.pageSize = pageSize;
    pager.pagination('refresh',{
    pageNumber:pageNum,
    pageSize:pageSize
    });
    dg.datagrid('loadData',state.allRows);
    }
    });
    $(this).datagrid('loadData', state.data);
    if (opts.url){
    $(this).datagrid('reload');
    }
    });
    },
    loadData: function(jq, data){
    jq.each(function(){
    $(this).data('datagrid').allRows = null;
    });
    return loadDataMethod.call($.fn.datagrid.methods, jq, data);
    },
    deleteRow: function(jq, index){
    return jq.each(function(){
    var row = $(this).datagrid('getRows')[index];
    deleteRowMethod.call($.fn.datagrid.methods, $(this), index);
    var state = $(this).data('datagrid');
    if (state.options.loadFilter == pagerFilter){
    for(var i=0; i<state.allRows.length; i++){
    if (state.allRows[i] == row){
    state.allRows.splice(i,1);
    break;
    }
    }
    $(this).datagrid('loadData', state.allRows);
    }
    });
    },
    getAllRows: function(jq){
    return jq.data('datagrid').allRows;
    }
    })
    })(jQuery);

    //获取data
    function getData(){
    var rows = [];
    for(var i=1; i<=100; i++){
    var amount = Math.floor(Math.random()*1000);
    var price = Math.floor(Math.random()*1000);
    rows.push({
    inv: 'Inv No '+i,
    date: $.fn.datebox.defaults.formatter(new Date()),
    name: 'Name '+i,
    amount: amount,
    price: price,
    cost: amount*price,
    note: 'Note '+i
    });
    }
    return rows;
    }

    $(function(){
    $('#dg').datagrid({data:getData()}).datagrid('clientPaging');
    });
    </script>

    </body>
</html>