<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../common/IncludeTop.jsp"%>

<h2>My Orders</h2>
<table>
	<tr>
		<th>Order ID</th>
		<th>Date</th>
		<th>Total Price</th>
	</tr>

	<s:iterator value="orderList">
		<tr>
			<td>
				<a href="viewOrder?order.orderId=<s:property value="orderId"/>"><s:property value="orderId"/></a>
			</td>
			<td>
				<s:property value="orderDate"/>
			</td>
			<td>
				<s:property value="totalPrice"/>
			</td>
		</tr>
	</s:iterator>
</table>

<%@ include file="../common/IncludeBottom.jsp"%>