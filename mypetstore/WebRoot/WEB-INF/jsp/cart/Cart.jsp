<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a href="returntomain"><s:text name="ReturnMain" /></a>
</div>

<div id="Catalog">

	<div id="Cart">

		<h2><s:text name="shopping_cart" /></h2>
		<form action="updateCartQuantities" method="post">
			<table>
				<tr>
					<th><b><s:text name="item_id" /></b></th>
					<th><b><s:text name="product_id" /></b></th>
					<th><b><s:text name="description" /></b></th>
					<th><b><s:text name="inStock" />?</b></th>
					<th><b><s:text name="quantity" /></b></th>
					<th><b><s:text name="list_price" /></b></th>
					<th><b><s:text name="total_cost" /></b></th>
					<th>&nbsp;</th>
				</tr>

				<s:if test="#session.cart.subTotal == 0">
					<tr>
						<td colspan="8"><b><s:text name="empty" />.</b></td>
					</tr>
				</s:if>

				<s:iterator value="cart.cartItems">
					<tr>
						<td><a
							href="viewItem?item.itemId=<s:property value="item.itemId"/>"><s:property
									value="item.itemId" /></a></td>
						<td><s:property value="item.product.productId" /></td>
						<td><s:property value="item.attribute1" /> <s:property
								value="item.attribute2" /> <s:property value="item.attribute3" />
							<s:property value="item.attribute4" /> <s:property
								value="item.attribute5" /> <s:property
								value="item.product.name" /></td>
						<td><s:property value="inStock" /></td>
						<td><input type="text"
							name="<s:property value="item.itemId"/>"
							value="<s:property value="quantity"/>" /></td>
						<td><s:property value="item.listPrice" /></td>
						<td><s:property value="total" /></td>
						<td><a
							href="removeItemFromCart?workingItemId=<s:property value="item.itemId"/>"
							class="Button"><s:text name="remove" /></a></td>
					</tr>
				</s:iterator>
				<tr>
					<td colspan="7"><s:text name="total_cost" />: <s:property value="cart.subTotal" />
						<input type="submit" value="Update Cart" />
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>





		<s:if test="#session.cart.subTotal > 0">
			<a href="newOrderForm" class="Button"><s:text name="check" /></a>
		</s:if>


	</div>

	<div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>