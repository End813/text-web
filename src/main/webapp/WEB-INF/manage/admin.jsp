<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 	
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript" src="scripts/function-manage.js"></script>
  	<link type="text/css" rel="stylesheet" href="css/style.css" />
  	<script type="text/javascript" src="jquery-1.12.4.js"></script>
  	<script type="text/javascript">
  		
  		function logout(id){
  			alert(id);
  			$.ajax({
  				url:"servlet/ListenerServlert",
				type:"post",
				data:"action=logout&id="+id,
				dataType:"text",
				success:function (mag){
					if(mag=="true"){
						alert("踢人成功!");
						show();
					}else{
						alert("请退失败");
					}
				}
  				
  			})
  			
  		}
  		
  		$(function(){
  			show();
  		})
  		
  		function show(){
  			$.ajax({
  				url:"servlet/ListenerServlert",
				type:"post",
				data:"action=show",
				dataType:"json",
				success:function (mag){	
					$(".list:eq(0)").empty();
					$(".list:eq(0)").append("<tr><th>ID</th><th>用户名</th><th>操作</th></tr>");
					
					for(var i=0;i<mag.length;i++){
						if("${user.userName}"==mag[i].name){
							$(".list:eq(0)").append("<tr><td class='first w4 c'>"+mag[i].id+"</td><td><a href='#' target='_blank'>"+mag[i].name+"</a></td><td class='w1 c'>管理员</td></tr>");
						}else{
							$(".list:eq(0)").append("<tr><td class='first w4 c'>"+mag[i].id+"</td><td><a href='#' target='_blank'>"+mag[i].name+"</a></td><td class='w1 c'><a onclick=logout(&quot;"+mag[i].sessionID+"&quot;)>踢人</a></td></tr>");
						}
					}				
				}  				
  			})
  		}
  	</script>
  </head>
  
  <body>
     <%@include file="/Part/botton.jsp" %>
   <div id="position" class="wrap">
	您现在的位置：<a href="index.html">易买网</a> &gt; 管理后台
	</div>
	<%@include file="/Part/left.jsp" %>
	
	<div class="main">
		<h2>在线管理</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>用户名</th>
					<th>操作</th>
				</tr>
				<tr>
					<td class="first w4 c">1</td>
					<td class="thumb"><a href="../product-view.html" target="_blank">铁三角 Audio-Technica ATH-EQ300M-SV 银色 挂耳式耳机</a></td>
					<td class="w1 c"><a href="product-modify.html">修改</a> <a href="javascript:Delete(1);">删除</a></td>
				</tr>
				<tr>
					<td class="first w4 c">2</td>
					<td class="thumb"><img src="images/product/0_tiny.gif" /><a href="../product-view.html" target="_blank">铁三角 Audio-Technica ATH-EQ300M-SV 银色 挂耳式耳机</a></td>
					<td class="w1 c"><a href="product-modify.html">修改</a> <a href="javascript:Delete(1);">删除</a></td>
				</tr>
			</table>
			<div class="pager">
				<ul class="clearfix">
					
				</ul>
			</div>
		</div>
	</div>
	<div class="clear"></div>
<div id="footer">
	Copyright &copy; 2010 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
  </body>
</html>
