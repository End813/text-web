<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript">

	function category(id){
		
		var href = location.href;
		
		href = href.substring(0,href.indexOf('?'));

		if(href!="${path}/reception/product-list.jsp"){
			location.href="${path}/reception/product-list.jsp?id="+id;
		}else{
		$.ajax({
				url:"${path}/servlet/ProductServlert",
  				type:"post",
  				dataType:"json",
  				data:"action=category&id="+id,
  				success:function(mag){
  					$("#commodity").empty();
  					for(var i=0;i<mag.length;i++){
  						$("#commodity").append("<li><dl><dt><a target='_blank' href='${path}/servlet/ProductServlert?action=product&id="+mag[i].id+"' ><img src='images/product/"+mag[i].fileName+"' /></a></dt><dd class='title'><a target='_blank' href='${path}/servlet/ProductServlert?action=product&id="+mag[i].id+"'>"+mag[i].name+"</a></dd><dd class='price'>￥"+mag[i].price+"</dd></dl></li>");
  					}
  				},error:function(){
  					alert("失败");
  				}
			})
		}
		
	}
	$(function(){
		$.ajax({
  				url:"${path}/servlet/ProductCategoryServlert",
  				type:"post",
  				dataType:"json",
  				data:"action=productCategory",
  				success:function(mag){
  					$(".box:eq(0) > dl:eq(0)").empty();
  					
  					for(var i=0;i<mag.length;i++){
  						if(mag[i].type==1){
  							$(".box:eq(0) > dl:eq(0)").append("<dt>"+mag[i].name+"</dt>");
  						}else if(mag[i].type==2){
  							$(".box:eq(0) > dl:eq(0)").append("<dd><a onclick='category("+mag[i].id+")'>"+mag[i].name+"</a></dd>");
  						}else if(mag[i].type==3){
  							$(".box:eq(0) > dl:eq(0)").append("<dd>&emsp;&emsp;<a onclick='category("+mag[i].id+")'>"+mag[i].name+"</a></dd>");
  						}
  					}
  				}
  				})
	})
</script>

<div  class="lefter">
		<div class="box">
			<h2>商品分类</h2>
			<dl>
				<dt>图书音像</dt>
				<dd><a href="product-list.html">图书</a></dd>
				<dd><a href="product-list.html">音乐</a></dd>
				<dt>百货</dt>
				<dd><a href="product-list.html">运动健康</a></dd>
				<dd><a href="product-list.html">服装</a></dd>
				<dd><a href="product-list.html">家居</a></dd>
				<dd><a href="product-list.html">美妆</a></dd>
				<dd><a href="product-list.html">母婴</a></dd>
				<dd><a href="product-list.html">食品</a></dd>
				<dd><a href="product-list.html">手机数码</a></dd>
				<dd><a href="product-list.html">家具首饰</a></dd>
				<dd><a href="product-list.html">手表饰品</a></dd>
				<dd><a href="product-list.html">鞋包</a></dd>
				<dd><a href="product-list.html">家电</a></dd>
				<dd><a href="product-list.html">电脑办公</a></dd>
				<dd><a href="product-list.html">玩具文具</a></dd>
				<dd><a href="product-list.html">汽车用品</a></dd>
			</dl>
		</div>
		<div class="spacer"></div>
		<div class="last-view">
			<h2>最近浏览</h2>
			<dl class="clearfix">
				<dt><img src="images/product/0_tiny.gif" /></dt>
				<dd><a href="product-view.html">法国德菲丝松露精品巧克力500g/盒</a></dd>
				<dt><img src="images/product/0_tiny.gif" /></dt>
				<dd><a href="product-view.html">法国德菲丝松露精品巧克力500g/盒</a></dd>
			</dl>
		</div>
	</div>