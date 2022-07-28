<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/28/2022
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<div style="width: 300px ;height: 200px ; margin: auto ;text-align: center;border: 1px solid #666666">
<form action="/CalculatorServlet" method="post">
    <p><span>First-Operand</span>
    <input type="number" name="first-operand"></p>
    <select name="operator">
        <option value="+">Addition</option>
        <option value="-">Subtraction</option>
        <option value="*">Multiplication</option>
        <option value="/">Division</option>
    </select><br>
    <p><span>Second operand</span>
    <input type="number" name="second-operand"></p>
    <button type="submit">Result</button>
</form>
</div>
</body>
</html>
