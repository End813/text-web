<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<title>易买网 - 首页</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>



<c:set var="path" value="${pageContext.request.contextPath}"></c:set>


<script type="text/javascript" src="jquery-1.12.4.js"></script>
<script type="text/javascript">
	
  	   function genrateImg(targetImg){
	      targetImg.src="image/imageAction.action?u=" + new Date().getTime();
	   }

	   window.onkeyup = function(wao){
		   if(wao.keyCode=="13"){
			   document.getElementsByName("submit")[0].click();
		   }
	   }
	   
	   </script>
</head>

<body>
	 <c:if test="${!empty sessionScope.user}">
		<script>
			var type = "${sessionScope.user.type}";
			if(type==1||type==2||type==3){
				location.href="${path}/manage/index.jsp?csstype=1";
			}else if(type==0){
				location.href="${path}/reception";
			}
		</script>
	</c:if>
	<c:if test="${sessionScope.Prompt!=null}">
		<script type="text/javascript">
			alert("${sessionScope.Prompt}");
		</script>
		<c:remove var="Prompt"/>
	</c:if>
	
	<%@include file="/Part/index.jsp" %>
	<div id="register" class="wrap">
		<div class="shadow">
			<em class="corner lb"></em> <em class="corner rt"></em>
			<div class="box" style="boder:10px solid red;">
				<h1>欢迎回到易买网</h1>
				</font>
				<c:remove var="flag" scope="session" />
				<form id="loginForm" method="post" action="/login/loginAction_register.action"
					onsubmit="return checkForm(this)">
					<table>
						<tr>
							<td class="field">用户名：</td>
							<td><input class="text" type="text" name="loginName"
								required value="admin" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span>
							</td>
						</tr>
						<tr>
							<td class="field">登录密码：</td>
							<td><input class="text" type="password" id="passWord"
								name="PASSWORD" value="666" required onfocus="FocusItem(this)"
								onblur="CheckItem(this);" /><span></span></td>
						</tr>
						<tr>
							<td class="field">验证码：</td>
							<td><input class="text verycode" type="text" name="veryCode"
								onfocus="FocusItem(this)" required onblur="CheckItem(this)" /> <img
								id="veryCode" src="image/imageAction.action"
								onclick="genrateImg(this)" /><span></span></td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-green"><input type="submit"
									name="submit" value="立即登录" /> </label></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">Copyright &copy; 2010 北大青鸟 All Rights Reserved.
		京ICP证1000001号</div>
</body>
</html>
