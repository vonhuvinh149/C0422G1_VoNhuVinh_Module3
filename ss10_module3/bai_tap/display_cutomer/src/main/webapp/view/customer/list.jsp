<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/28/2022
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Hình ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="status">
        <tr>
            <th>${status.count}</th>
            <th>${customer.getName()}</th>
            <th>${customer.getDayOfBirth()}</th>
            <th>${customer.getAddress()}</th>
            <th><img style="width:50px ; height: 50px" src="${customer.getAvatar()}"></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
