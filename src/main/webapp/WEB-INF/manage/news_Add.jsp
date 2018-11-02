<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
     <title>后台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/style.css" />
  	<script type="text/javascript" src="jquery-1.12.4.js"></script>
  </head>
  
  <body>
    <%@include file="/Part/botton.jsp" %>
    <div id="main" class="wrap">
    <%@include file="/Part/left.jsp" %>
	<div class="main">
		<h2>添加新闻</h2>
		<div class="manage">
			<form action="/news/save" method="post">
					<table class="form">
						<tbody>
							<tr>															
								<td class="field">新闻标题：</td>
								<td><input name="title" /></td>
							</tr>
							<tr>
								<td class="field">新闻内容：</td>
								<td><input name="content" /></td>
							</tr>
							<tr>
								<td></td>
								<td><label class="ui-blue"><button>提交</button></label></td>
							</tr>
						</tbody>
					</table>
				</form>
		</div>
	</div>
	</div>
	<div class="clear"></div> 
  </body>
</html>
