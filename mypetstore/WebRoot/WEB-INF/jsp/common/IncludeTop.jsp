<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript">
	var xmlHttp;
	var table_body;
	var completeDiv;
	var inputField;
	function createXMLHttpRequests() {

		if (window.ActiveXObject) {

			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");

		}

		else if (window.XMLHttpRequest) {

			xmlHttp = new XMLHttpRequest();

		}

	}

	function search() {

		createXMLHttpRequests();
		
		inputField = document.getElementById("names");
		completeDiv = document.getElementById("popup");
		
		
		var keyword = document.getElementById("names").value;
		var kw = encodeURIComponent(encodeURIComponent(keyword));
		
		var url = "auto.servlet?names=" + kw;

		xmlHttp.open("GET", url, true);

		xmlHttp.onreadystatechange = test;

		xmlHttp.send(null);

	}
	function test() {
		
		setOffsets();

		var results = xmlHttp.responseXML.getElementsByTagName("name");
		var table = document.getElementById("name_table");
		table_body = table.getElementsByTagName("tbody").item(0);
		clear();

		for (var i = 0; i < results.length; i++) {
			var first_row = table_body.getElementsByTagName("tr").item(1);
			var row = document.createElement("tr");
			var cell = document.createElement("td");
			cell.onmouseout = function() {this.className='mouseOver';};
            
            cell.onmouseover = function() {this.className='mouseOut';};
            
            cell.setAttribute("bgcolor", "#FFFAFA");
                        
            cell.setAttribute("border", "0");
                         
            cell.style.cursor="pointer";

            cell.onclick = function() { populateName(this); } ;
            
			var cell_data = document
					.createTextNode(results[i].firstChild.nodeValue);
			cell.appendChild(cell_data);
			row.appendChild(cell);
			table_body.insertBefore(row, first_row);
		}

	}

	function clear() {

		var ind = table_body.childNodes.length;

		for (var i = ind - 1; i >= 0; i--) {

			table_body.removeChild(table_body.childNodes[i]);

		}
	}
	
	function populateName(cell) {

        inputField.value = cell.firstChild.nodeValue;

        clear();

    }
	
	function setOffsets() {

        var end = inputField.offsetWidth;

        var left = calculateOffsetLeft(inputField);

        var top = calculateOffsetTop(inputField) + inputField.offsetHeight;



        completeDiv.style.border = "green 3px solid";

        completeDiv.style.left = left + "px";

        completeDiv.style.top = top + "px";
		
        

    }



    function calculateOffsetLeft(field) {

      return calculateOffset(field, "offsetLeft");

    }



    function calculateOffsetTop(field) {

      return calculateOffset(field, "offsetTop");

    }



    function calculateOffset(field, attr) {

      var offset = 0;

      while(field) {

        offset += field[attr];

        field = field.offsetParent;

      }

      return offset;

    }
</script>
<head>
<link rel="StyleSheet" href="css/jpetstore.css" type="text/css"
	media="screen" />

<meta name="generator"
	content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
<title>mypetstore</title>
<meta content="text/html; charset=windows-1252"
	http-equiv="Content-Type" />
<meta http-equiv="Cache-Control" content="max-age=0" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />
</head>

<body>

	<div id="Header">

		<div id="Logo">
			<div id="LogoContent">
				<a href="returntomain"><img src=<s:text name="logo-topbar"/> /></a>
			</div>
		</div>

		<div id="Menu">
			<div id="MenuContent">
				<a href="viewCart"><img align="middle" name="img_cart"
					src="images/cart.gif" /></a> <img align="middle"
					src="images/separator.gif" />
				<s:if test="#session.account == null">
					<a href="signonForm"><s:text name="signIn" /></a>
				</s:if>
				<s:if test="#session.account != null">
					<s:if test="!#session.authenticated">
						<a href="signonForm"><s:text name="signIn" /></a>
					</s:if>
				</s:if>
				<s:if test="#session.account != null">
					<s:if test="#session.authenticated">
						<a href="loginOut"><s:text name="signOut" /></a>
						<img align="middle" src="images/separator.gif" />
						<a href="viewAccount"><s:text name="myAccount" /></a>
					</s:if>
				</s:if>
				<img align="middle" src="images/separator.gif" /> <a
					href="help.html">?</a> <a href="main?request_locale=zh_CN"><s:text
						name="chinese" /></a> <a href="main?request_locale=en"><s:text
						name="english" /></a>
						<a href="log"><s:text name="log" /></a>

			</div>
		</div>

		<div id="Search">
			<div id="SearchContent">
				<form action="searchProduct" method="post" name="searchForm">
					<input type="text" name="keyword" id="names" onkeyup="search();"
						size="14" /> <input type="submit" name="searchProducts"
						value="Search" />
				</form>
			</div>
		</div>
		<div id="ke_test"></div>
		<div style="position:absolute;"   id="popup">
			<table id="name_table" bgcolor="#FFFAFA" border="0" cellspacing="0"
				cellpadding="0"   width="105">
				<tbody id="name_table_body">

				</tbody>
			</table>
		</div>
		<div id="QuickLinks">
			<s:a href="viewCategory?category.categoryId=FISH">

				<font color="green"><s:text name="fish" /></font>
			</s:a>
			<img src="images/separator.gif" />
			<s:a href="viewCategory?category.categoryId=DOGS">
				<font color="green"><s:text name="dog" /></font>
			</s:a>
			<img src="images/separator.gif" />
			<s:a href="viewCategory?category.categoryId=REPTILES">
				<font color="green"><s:text name="reptile" /></font>
			</s:a>
			<img src="images/separator.gif" />
			<s:a href="viewCategory?category.categoryId=CATS">

				<font color="green"><s:text name="cat" /></font>
			</s:a>
			<img src="images/separator.gif" />
			<s:a href="viewCategory?category.categoryId=BIRDS">

				<font color="green"><s:text name="bird" /></font>
			</s:a>
		</div>

	</div>

	<div id="Content">${requestScope.message}