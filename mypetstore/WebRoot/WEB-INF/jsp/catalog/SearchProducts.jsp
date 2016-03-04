<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a href="main"><s:text name="RetrunMain" /></a>
</div>

<div id="Catalog">

	<table>
		<tr>
			<th>&nbsp;</th>
			<th><s:text name="product_id" /></th>
			<th><s:text name="name" /></th>
		</tr>
		<s:iterator value="productList">
			<tr>

				<td><a href="viewProduct?item.productId=<s:property value="productId"/>"><s:property value="description"  escape="false"/>
				</a></td>
				<td><b> <a
						href="viewProduct?item.productId=<s:property value="productId"/>">
							<s:property value="productId"/></a>
				</b></td>


				<td><s:property value="name"/></td>
			</tr>
	</s:iterator>

	</table>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>




