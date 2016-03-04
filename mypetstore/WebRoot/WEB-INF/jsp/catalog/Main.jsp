<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
	var xmlHttp;

	var table_body;
	var completeDiv;

	function createXMLHttpRequest() {

		if (window.ActiveXObject) {

			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");

		}

		else if (window.XMLHttpRequest) {

			xmlHttp = new XMLHttpRequest();

		}

	}

	function getData(element) {
		createXMLHttpRequests();
		var url = "tip.servlet?key=" + element;

		xmlHttp.open("GET", url, true);

		xmlHttp.onreadystatechange = callback;

		xmlHttp.send(null);
	}

	function callback() {
		completeDiv = document.getElementById("popu");
		completeDiv.style.left = 300 + "px";

		completeDiv.style.top = 140 + "px";

		var result2 = xmlHttp.responseXML.getElementsByTagName("name")[0].firstChild.nodeValue;
		var table = document.getElementById("courseData");
		table_body = table.getElementsByTagName("tbody").item(0);
		var first_row = table_body.getElementsByTagName("tr").item(1);
		var row = document.createElement("tr");
		var cell = document.createElement("td");
		var cell_data = document.createTextNode(result2);
		cell.appendChild(cell_data);
		row.appendChild(cell);
		table_body.insertBefore(row, first_row);
		clearData();
		cell.appendChild(cell_data);
		row.appendChild(cell);
		table_body.insertBefore(row, first_row);
	}
	
	
	function clearData(){
		var table = document.getElementById("courseData");
		table_body = table.getElementsByTagName("tbody").item(0);
		table_body.removeChild(table_body.childNodes[0]);
	};
</script>

<%@ include file="../common/IncludeTop.jsp"%>
<div id="Welcome">
	<div id="WelcomeContent">
		<s:text name="welcome" />
	</div>
</div>

<div id="Main">
	<div id="Sidebar">
		<div id="SidebarContent">
			<s:a href="viewCategory?category.categoryId=FISH">

				<font color="green" size="5"><s:text name="fish" /></font>
			</s:a>
			<br /> <s:text name="fish_main" /><br />
			<s:a href="viewCategory?category.categoryId=DOGS">

				<font color="green" size="5"><s:text name="dog" /></font>
			</s:a>
			<br /><s:text name="dog_main" /><br />
			<s:a href="viewCategory?category.categoryId=CATS">
				<font color="green" size="5"><s:text name="cat" /></font>
			</s:a>
			<br /> <s:text name="cat_main" /><br />
			<s:a href="viewCategory?category.categoryId=REPTILES">
				<font color="green" size="5"><s:text name="reptile" /></font>
			</s:a>
			<br /><s:text name="reptile_main" /><br />
			<s:a href="viewCategory?category.categoryId=BIRDS">
				<font color="green" size="5"><s:text name="bird" /></font>
			</s:a>
			<br /> <s:text name="bird_main" />
		</div>
	</div>

	<div id="MainImage">
		<div id="MainImageContent">
			<div style="position:absolute;" id="popu">
				<table id="courseData" border="0" cellspacing="0" cellpadding="0">
					<tbody id="courseDataBody"></tbody>
				</table>
			</div>
			<map name="estoremap">
				<area alt="Birds" coords="72,2,280,250"
					href="viewCategory?category.categoryId=BIRDS" shape="RECT"
					onmouseover="getCourseData('BIRDS');" onmouseout="clearData();" />
				<area alt="Fish" coords="2,180,72,250"
					href="viewCategory?category.categoryId=FISH" shape="rect"
					onmouseover="getData('FISH');" onmouseout="clearData();"/>
				<area alt="Dogs" coords="60,250,130,320"
					href="viewCategory?category.categoryId=DOGS" shape="rect"
					onmouseover="getData('DOGS');" onmouseout="clearData();"/>
				<area alt="Reptiles" coords="140,270,210,340"
					href="viewCategory?category.categoryId=REPTILES" shape="rect"
					onmouseover="getData('REPTILES');" onmouseout="clearData();"/>
				<area alt="Cats" coords="225,240,295,310"
					href="viewCategory?category.categoryId=CATS" shape="rect"
					onmouseover="getData('CATS');" onmouseout="clearData();"/>
				<area alt="Birds" coords="280,180,350,250"
					href="viewCategory?category.categoryId=BIRDS" shape="rect"
					onmouseover="getData('BIRDS');" onmouseout="clearData();"/>
			</map>
			<img height="355" src="images/splash.gif" align="middle"
				usemap="#estoremap" width="350" />
		</div>
	</div>
	<div id="Separator">&nbsp;</div>
</div>
<%@include file="../common/IncludeBottom.jsp"%>
