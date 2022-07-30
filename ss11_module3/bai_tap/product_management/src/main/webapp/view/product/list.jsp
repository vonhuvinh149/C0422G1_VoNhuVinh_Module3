<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/29/2022
  Time: 12:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Trang sản phẩm</title>
    <link rel="stylesheet" type="text/css" href="view/product/productcss.css">
</head>
<body>
<div>
    <h1>Danh sách sản phẩm</h1>
    <br>
    <table border="1" >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Producer</th>
            <th colspan="2">Chức năng</th>
        </tr>
        <c:forEach var="product" items="${productList}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.producer}</td>
                <td><a href="/ProductServlet?action=update&id=${product.id}">Cập nhật</a></td>
                <td><a href="/ProductServlet?action=delete&id=${product.id}">Xoá</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <p>
    <a href="/ProductServlet?action=add" style="margin-top: 30px">Thêm mới sản phẩm</a>
    </p>
</div>
</body>
</html>
