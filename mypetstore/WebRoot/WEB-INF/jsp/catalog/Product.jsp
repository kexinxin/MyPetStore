<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../common/IncludeTop.jsp"%>



<div id="BackLink">
	<a href="viewCategory?category.categoryId=<s:property value="product.categoryId" />"><s:text name="return" /><s:property value="product.categoryId" /></a>
</div>

<div id="Catalog">

	<h2> <s:property value="product.name" /></h2>

	<table>
		<tr>
			<th><s:text name="item_id" /></th>
			<th><s:text name="product_id" /></th>
			<th><s:text name="description" /></th>
			<th><s:text name="list_price" /></th>
			<th>&nbsp;</th>
		</tr>
		<s:iterator value="itemList">
			<tr>
				<td><a href="viewItem?item.itemId=<s:property value="itemId" />"><s:property value="itemId" /></a></td>
				<td><s:property value="product.productId" /></td>
				<td><s:property value="attribute1" /> <s:property
						value="attribute2" /> <s:property value="attribute3" /> <s:property
						value="attribute4" /> <s:property value="attribute5" /> <s:property
						value="product.name" /></td>
				<td><s:property value="listPrice" /></td>
				<td><a class="Button" href="addItemToCart?workingItemId=<s:property value="itemId" />"><s:text name="addTocart" /></a></td>
			</tr>
		</s:iterator>
	</table>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>





