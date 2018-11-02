<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>用户管理</dt>
				<dd>
				<shiro:hasPermission name="easybuy:user:add">
					<em><a href="/user/userAction_goAdd.action?csstype=1">新增</a></em>
				</shiro:hasPermission>
				
				<shiro:hasPermission name="easybuy:user:list">
					<a href="/user/userAction_execute.action?csstype=1">用户管理</a>
				</shiro:hasPermission>
				</dd>
				<dt>商品信息</dt>
				
				<dd>
				<shiro:hasPermission name="productcategory/ProductCategoryAction!save.action">
					<em><a href="/productCategory/productCategoryAction_goAdd.action?csstype=2">新增</a></em>
				</shiro:hasPermission>
				<shiro:hasPermission name="productcategory/ProductCategoryAction.action">
					<a href="/productCategory/productCategoryAction_execute.action?csstype=2">分类管理</a>
				</shiro:hasPermission>
				</dd>
				
				<dd>
				<shiro:hasPermission name="product/ProductAction!input.action">
					<em><a href="/product/productAction_goAdd.action?csstype=2">新增</a></em>
				</shiro:hasPermission>
				<shiro:hasPermission name="product/ProductAction.action">
				<a href="/product/productAction_execute.action?csstype=2">商品管理</a></dd>
				</shiro:hasPermission>
				<dt>订单管理</dt>
				<shiro:hasPermission name="order/OrderAction!getPage.action">
				<dd><a href="/order/orderAction_execute.action?csstype=3">订单管理</a></dd>
				</shiro:hasPermission>
				<dt>留言管理</dt>
				<shiro:hasPermission name="comment/CommentAction!getPage.action">
				<dd><a href="/comment/commentAction_execute.action?csstype=4">留言管理</a></dd>
				</shiro:hasPermission>
				<dt>新闻管理</dt>
				<dd>
				<shiro:hasPermission name="news/NewsAction!add.action">
				<em><a href="/news/newsAction_goAdd.action?csstype=5">新增</a></em>
				</shiro:hasPermission>
				<shiro:hasPermission name="manage/t_news/news_list.jsp">
				<a href="/news/newsAction_execute.action?csstype=5">新闻管理</a>
				</shiro:hasPermission>
				</dd>
				<shiro:hasPermission name="easybuy:role:list">
				<dd><a href="/role/roleAction.action?csstype=7">权限管理</a></dd>
				</shiro:hasPermission>
			</dl>
		</div>
	</div>
