<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ld.dbPOJO.TeacherUserInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
TeacherUserInfo userInfo = new TeacherUserInfo();
if(session.getAttribute("userInfo")!=null){
 userInfo = (TeacherUserInfo)session.getAttribute("userInfo");
 }
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/style/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>easyui/themes/icon.css">
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>

		<script>
			var toolbar = [{
				text:'Add',
				iconCls:'icon-add',
				handler:function(){alert('add')}
			},{
				text:'Cut',
				iconCls:'icon-cut',
				handler:function(){alert('cut')}
			},'-',{
				text:'Save',
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
			var rows;	
			$.ajax({   
			     url:'<%=basePath%>getShiTi',   
			     type:'post',   
			     dataType: 'json',  
			     data:'userName=<%=userInfo.getUserName()%>',      
			     async : true, //异步   
			     error:function(){   
			        alert('error');   
			     },   
			     success:function(jsonData){   
			       $('#dg').datagrid({data:jsonData}).datagrid('clientPaging');
			     }
			 });
			//return rows;
		}
		$(function(){
		//	$('#dg').datagrid({data:[]}).datagrid('clientPaging'); //初始化空表格
		$('#dg').css("display","none"); //初始化时隐藏表格
			getData();//ajax获取数据，重新加载表格
			
		});
		
	</script>	
</head>
<body>
<div id="p" class="easyui-panel style-panel" title="试题管理">
		<div class="style-toolbar">
		<label class="x-form-item-label" style="width:65px;" id="ext-gen22">试题类型:</label>
		<select id="cc" class="easyui-combobox" name="dept" style="width:200px;">
		    <option value="aa">aitem1</option>
		    <option>bitem2</option>
		    <option>bitem3</option>
		    <option>ditem4</option>
		    <option>eitem5</option>
		</select>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px">Search</a>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" style="width:80px">Reload</a>
		</div>
		<div style="margin-top:3px;"></div>
	
		
		
	<!-- 分页表格 -->	
	
	<table id="dg"  style="width:100%;height:490px" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
				toolbar:toolbar
				">
		<thead>
			<tr>
				<th field="inv" width="80">Inv No</th>
				<th field="date" width="100">Date</th>
				<th field="name" width="80">Name</th>
				<th field="amount" width="80" align="right">Amount</th>
				<th field="price" width="80" align="right">Price</th>
				<th field="cost" width="100" align="right">Cost</th>
				<th field="note" width="110">Note</th>
			</tr>
		</thead>
	</table>

		
	</div>
	
</body>
</html>
