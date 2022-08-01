<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/30/2022
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Thêm mới sản phẩm</h1>
<a href="/ProductServlet">Quay lại</a>
<form action="/ProductServlet?action=add" method="post">
    <input type="text" name="id" placeholder="Nhập id ">
    <input type="text" name="name" placeholder="Nhập tên ">
    <input type="text" name="price" placeholder="Nhập giá ">
    <input type="text" name="description" placeholder="Nhập mô tả ">
    <input type="text" name="producer" placeholder="Nhập nhà sản xuất">
    <button type="submit">Thêm Mới</button>
</form>
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>
</body>
</html>
