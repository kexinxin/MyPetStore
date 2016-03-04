<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a href="returntomain"><s:text name="ReturnMain" /></a>
</div>

<div id="Catalog">

	<h2>
		<s:property value="category.categoryId" />
	</h2>

	<table>
		<tr>
			<th><s:text name="product_id" /></th>
			<th><s:text name="name" /></th>
		</tr>
		<s:iterator value="productList">
			<tr>
				<td><a
					href="viewProduct?item.productId=<s:property value="productId"/>"><s:property
							value="productId" /></a></td>
				<td><s:property value="name" /></td>
			</tr>
		</s:iterator>
	</table>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>


