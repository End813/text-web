<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<div id="header" class="wrap">
	<div id="logo">
		<img src="images/logo.gif" />
	</div>
	
	<div class="help">
		<span id="number">${sessionScope.list.size()}</span><a href="${path}/reception/shopping.jsp" class="shopping">购物车</a>${user.userName}${user.userName eq null?"<a href='/manage/login.jsp'>登录</a>":"<a onclick='quit()'>退出</a>"}<a
			href="${path}/reception/register.jsp">注册</a><a href="${path}/reception/guestbook.jsp">留言</a>
	</div>
	
	
<script type="text/javascript">

	function quit(){
		var url = location.href;
		$.ajax({
			url:"${path}/servlet/LoginServlert",
  				type:"post",
  				dataType:"text",
  				data:"action=quitUser",
  				success:function(mag){
  					if(mag){
  						location.href=url;
  					}
  				}
		})
		
	}

</script>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="${path}/reception/index.jsp">首页</a></li>
			<li><a href="#">图书</a></li>
			<li><a href="#">百货</a></li>
			<li><a href="#">品牌</a></li>
			<li><a href="#">促销</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<li class="first"><a href="#">音乐</a></li>
			<li><a href="#">影视</a></li>
			<li><a href="#">少儿</a></li>
			<li><a href="#">动漫</a></li>
			<li><a href="#">小说</a></li>
			<li><a href="#">外语</a></li>
			<li><a href="#">数码相机</a></li>
			<li><a href="#">笔记本</a></li>
			<li><a href="#">羽绒服</a></li>
			<li><a href="#">秋冬靴</a></li>
			<li><a href="#">运动鞋</a></li>
			<li><a href="#">美容护肤</a></li>
			<li><a href="#">家纺用品</a></li>
			<li><a href="#">婴幼奶粉</a></li>
			<li><a href="#">饰品</a></li>
			<li class="last"><a href="#">Investor Relations</a></li>
		</ul>
	</div>
</div>
