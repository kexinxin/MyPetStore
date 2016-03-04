
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%><%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a href="main">Return to Main Menu</a>
</div>

<div id="Catalog">
	<table>
		<tr>
			<th align="center" colspan="2">Order #<s:property
					value="order.orderId" /> <s:property value="order.orderDate" />
			</th>
		</tr>
		<tr>
			<th colspan="2">Payment Details</th>
		</tr>
		<tr>
			<td>Card Type:</td>
			<td><s:property value="order.cardType" /></td>
		</tr>
		<tr>
			<td>Card Number:</td>
			<td><s:property value="order.creditCard" />* Fake number!</td>
		</tr>
		<tr>
			<td>Expiry Date (MM/YYYY):</td>
			<td><s:property value="order.expiryDate" /></td>
		</tr>
		<tr>
			<th colspan="2">Billing Address</th>
		</tr>
		<tr>
			<td>First name:</td>
			<td><s:property value="order.billToFirstName" /></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><s:property value="order.billToLastName" /></td>
		</tr>
		<tr>
			<td>Address 1:</td>
			<td><s:property value="order.billAddress1" /></td>
		</tr>
		<tr>
			<td>Address 2:</td>
			<td><s:property value="order.billAddress2" /></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><s:property value="order.billCity" /></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><s:property value="order.billState" /></td>
		</tr>
		<tr>
			<td>Zip:</td>
			<td><s:property value="order.billZip" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><s:property value="order.billCountry" /></td>
		</tr>
		<tr>
			<th colspan="2">Shipping Address</th>
		</tr>
		<tr>
			<td>First name:</td>
			<td><s:property value="order.shipToFirstName" /></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><s:property value="order.shipToLastName" /></td>
		</tr>
		<tr>
			<td>Address 1:</td>
			<td><s:property value="order.shipAddress1" /></td>
		</tr>
		<tr>
			<td>Address 2:</td>
			<td><s:property value="order.shipAddress2" /></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><s:property value="order.shipCity" /></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><s:property value="order.shipState" /></td>
		</tr>
		<tr>
			<td>Zip:</td>
			<td><s:property value="order.shipZip" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><s:property value="order.shipCountry" /></td>
		</tr>
		<tr>
			<td>Courier:</td>
			<td><s:property value="order.courier" /></td>
		</tr>
		<tr>
			<td colspan="2">Status: <s:property value="order.status" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<table>
					<tr>
						<th>Item ID</th>
						<th>Description</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Total Cost</th>
					</tr>

					<s:iterator value="order.lineItems">
						<tr>
							<td><a
								href="viewItem?item.itemId=<s:property value="item.itemId"/>">
									<s:property value="item.itemId" />
							</a></td>
							<td><s:property value="item.attribute1" /> <s:property
									value="item.attribute2" /> <s:property value="item.attribute3" />
								<s:property value="item.attribute4" /> <s:property
									value="item.attribute5" /></td>
							<td><s:property value="quantity" /></td>
							<td><s:property value="unitPrice" /></td>
							<td><s:property value="total" /></td>
						</tr>
					</s:iterator>

					<tr>
						<th colspan="5">Total: <s:property value="order.totalPrice" />
						</th>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>
<%@ include file="../common/IncludeBottom.jsp"%>
