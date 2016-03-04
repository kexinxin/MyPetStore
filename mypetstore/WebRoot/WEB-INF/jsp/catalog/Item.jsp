<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a
		href="viewProduct?item.productId=<s:property value="product.productId" />"><s:text
			name="return" />
		<s:property value="product.productId" /> </a>

</div>

<div id="Catalog">

	<table>
		<tr>
			<td><s:property value="#session.product.description"
					escape="false" /></td>
		</tr>
		<tr>
			<td><b> <s:property value="item.itemId" />
			</b></td>
		</tr>
		<tr>
			<td><b><font size="4"> <s:property
							value="item.attribute1" /> <s:property value="item.attribute2" />
						<s:property value="item.attribute3" /> <s:property
							value="item.attribute4" /> <s:property value="item.attribute5" />
						<s:property value="product.name" />
				</font></b></td>
		</tr>
		<tr>
			<td><s:property value="product.name" /></td>
		</tr>
		<tr>
			<td><s:if test="#item.quantity <= 0">
        <s:text name="Back ordered." />
      </s:if> <s:else>
					<s:property value="item.quantity" />
					<s:text name="inStock" />
				</s:else></td>
		</tr>
		<tr>
			<td><s:property value="item.listPrice" /></td>
		</tr>

		<tr>
			<td><a class="Button"
				href="addItemToCart?workingItemId=<s:property value="item.itemId" />"><s:text
						name="addTocart"></s:text></a></td>
		</tr>
	</table>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>



