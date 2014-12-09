<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title>
<!-- Linhas DWR -->
<script src='/ajaxdwr/dwr/engine.js'></script>
<script src='/ajaxdwr/dwr/interface/Funcoes.js'></script>
<script src='/ajaxdwr/dwr/util.js'></script>
<!-- Linhas DWR -->

<script>
function somar() {
	Funcoes.soma($("numero1").value,
                      $("numero2").value,resultado);
 }
 function resultado(dado) {
	 dwr.util.setValue($("resultado"),dado);
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
