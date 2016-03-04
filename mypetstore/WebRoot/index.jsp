<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>JPetStore Demo</title>
<link rel="StyleSheet" href="css/jpetstore.css" type="text/css"
	media="screen" />
</head>

<body>
	<div id="Content">
		<h2>Welcome to JPetStore 6</h2>

		<p>
			<s:a href="Entermain">Enter the Store</s:a>
		</p>

		<p>
			<sub>Copyright www.mybatis.org </sub>
		</p>

	</div>
</body>
</html>

