<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../common/IncludeTop.jsp"%>
<div id="Catalog">

	<s:form action="login" method="post">
		<p>
			<s:text name="u_a_p" />
		</p>
		<p>
			<s:text name="username" />
			:<input type="text" name="username" value="j2ee" /> <br />
			<s:text name="password" />
			:<input type="password" name="password" value="j2ee" /><br /> 验证码:
			<s:textfield name="validationCode" theme="simple" />
			<img src="validationCode" />
		</p>



		<input type="submit" name="signon" value="Login" />
	</s:form>

	<s:text name="need" />
	<a href="newAccount"><s:text name="register" /></a>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>