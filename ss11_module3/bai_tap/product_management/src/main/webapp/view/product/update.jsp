<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/30/2022
  Time: 12:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Cập nhật sản phẩm</h1>
<a href="/ProductServlet">Quay lại</a>
<form action="/ProductServlet?action=update&id=${product.id}" method="post">
    <p>Tên Sản phẩm</p>
    <input type="text" name="name" placeholder="nhập tên sản phẩm" value="${product.name}">
    <p>Giá sản phẩm</p>
    <input type="text" name="price" placeholder="nhập giá sản phẩm" value="${product.price}">
    <p>Mô tả sản phẩm</p>
    <input type="text" name="description" placeholder="nhập mô tả" value="${product.description}">
    <p>Nhà sản xuất</p>
    <input type="text" name="producer" placeholder="nhà sản xuất" value="${product.producer}">
    <button type="submit">Save</button>
</form>
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>
</body>
</html>
