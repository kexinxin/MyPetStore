<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a href="returntomain"><s:text name="ReturnMain" /></a>
</div>

<div id="Catalog">

	<h2>
		日志
	</h2>

	<table>
		<tr>
			<th>访问用户</th>
			<th>访问时间</th>
			<th>访问事件</th>
		</tr>
		<s:iterator value="#session.myLogList">
			<tr>
				<td><s:property value="logname" /></td>
				<td><s:property value="logdate" /></td>
				<td><s:property value="action" /></td>
			</tr>
		</s:iterator>
	</table>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>


