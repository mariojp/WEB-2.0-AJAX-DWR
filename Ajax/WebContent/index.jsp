<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title>
<script>
	function loadXMLHttpRequest() {
		var xmlhttp;
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		return xmlhttp;
	}

	function somar() {
		var xmlhttp = loadXMLHttpRequest();
		var num1 = document.getElementById("numero1").value;
		var num2 = document.getElementById("numero2").value;
		url = 'Soma?num1=' + num1 + '&num2=' + num2;

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				texto = xmlhttp.responseText;
				document.getElementById("resultado").value = texto;
			}
		}
		xmlhttp.open("GET", url, true);
		xmlhttp.send();
	}
</script>
</head>
<h2>Somando 2 numeros:</h2>
<input id="numero1" type="text" size="5" /> +
<input id="numero2" type="text" size="5" /> =
<input id="resultado" type="text" size="5" readonly />
<input type="button" value="Somar" onclick="somar()">
<body>
</body>
</html>
