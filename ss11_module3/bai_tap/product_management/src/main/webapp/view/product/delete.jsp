<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/30/2022
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/ProductServlet?action=delete&id=${product.id}" method="post">
    <table border="1px">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Producer</th>
        </tr>
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
        </tr>
    </table>
    <button type="submit">Xóa sản phẩm</button>
</form>
<a href="/ProductServlet">Quay lại </a>
</body>
</html>
