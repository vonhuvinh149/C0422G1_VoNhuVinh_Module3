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
<form action="/CalculatorServlet" method="post">
    <span>First-Operand</span>
    <input type="number" name="first-operand"><br>
    <select name="operator">
        <option value="+">Addition</option>
        <option value="-">Subtraction</option>
        <option value="*">Multiplication</option>
        <option value="/">Division</option>
    </select><br>
    <span>Second operand</span>
    <input type="number" name="second-operand">
    <button type="submit">Result</button>
</form>
</body>
</html>
