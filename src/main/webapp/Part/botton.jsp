<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:if test="${empty sessionScope.user}">
	<script>
		//location.href="${path}/manage/login.jsp";
	</script>
</c:if>
<div id="header" class="wrap">
	<div id="logo"><img src="images/logo.gif" /></div>
	<div class="help"><a href="${path}/index.jsp">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="${param.csstype ==0 ? "current" : ""}"><a href="${path}/index.jsp">首页</a></li>
			<li class="${param.csstype ==1 ? "current" : ""}"><a href="/user/userAction_execute.action?csstype=1">用户</a></li>
			<li class="${param.csstype ==2 ? "current" : ""}"><a href="/product/productAction_execute.action?csstype=2">商品</a></li>
			<li class="${param.csstype ==3 ? "current" : ""}"><a href="/order/orderAction_execute.action?csstype=3">订单</a></li>
			<li class="${param.csstype ==4 ? "current" : ""}"><a href="/comment/commentAction_execute.action?csstype=4">留言</a></li>
			<li class="${param.csstype ==5 ? "current" : ""}"><a href="/news/newsAction_execute.action?csstype=5">新闻</a></li>
			<li class="${param.csstype ==6 ? "current" : ""}"><a href="/login/loginAction_select.action?csstype=6">记录</a></li>
			<li class="${param.csstype ==7 ? "current" : ""}"><a href="/role/roleAction.action?csstype=7">权限</a></li>
		</ul>
	</div>
</div>

<div id="childNav">
	<div class="welcome wrap">
		管理员${user.userName }您好，今天是${date}，欢迎回到管理后台。
	</div>
</div>
