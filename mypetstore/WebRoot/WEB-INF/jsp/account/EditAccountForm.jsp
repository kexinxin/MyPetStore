<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">

	<form action="editAccount" method="post">

		<h3>User Information</h3>
		<div id="dateMess"></div>
		<table>
			<tr>
				<td>User ID:</td>
				<td>
				<s:property value="#session.account.username"/>
				</td>
			</tr>
			<tr>
				<td>New password:</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td>Repeat password:</td>
				<td><input type="text" name="repeatedPassword" /></td>
			</tr>
		</table>

		<%@ include file="IncludeAccountFields.jsp"%>

		<input type="submit" name="newAccount"
			value="Save Account Information" />


	</form>

	<a href="viewOrders">My Orders</a>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>