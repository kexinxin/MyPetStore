<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../common/IncludeTop.jsp"%>
<script type="text/javascript">
	var xmlHttp;
	function createXMLHttpRequest() {

		if (window.ActiveXObject) {

			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");

		}

		else if (window.XMLHttpRequest) {

			xmlHttp = new XMLHttpRequest();

		}

	}

	function validate() {

		createXMLHttpRequest();

		var sname = document.getElementById("sname").value;
		var name = encodeURIComponent(encodeURIComponent(sname));
		var url = "usernameIsExist.servlet?sname=" + name;

		xmlHttp.open("GET", url, true);

		xmlHttp.onreadystatechange = callback;

		xmlHttp.send(null);
	}

	function callback() {
		if (xmlHttp.readyState == 4) {
			var responseInfo = xmlHttp.responseXML
					.getElementsByTagName("message")[0].firstChild.data;
			var div1 = document.getElementById("dateMessage");
			if (responseInfo == "Exist") {
				div1.innerHTML = "<font color='red'>the username is already exist</font>";

			} else {
				div1.innerHTML = "<font color='green'>the username can be used</font>";
			}
		}
	}
</script>
<div id="Catalog">

	<form action="add" method="post">

		<h3>User Information</h3>
		<div id="dateMessage"></div>
		<table>
			<tr>
				<td>User ID:</td>
				<td><input type="text" name="username" id="sname"
					onchange="validate();" /></td>
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
</div>

<%@ include file="../common/IncludeBottom.jsp"%>