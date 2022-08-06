<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="row mt-5 d-flex justify-content-center " id="create">
    <div class="border border-dark p-5 w-75 shadow-sm p-3 mt-3 bg-body rounded overflow-hidden">
        <h3>Thêm mới nhân viên</h3>
        <form action="/customer" method="post">
            <p>Thêm:
                <input type="text" name="customerTypeId"/></p>
            <p>Thêm:
                <input type="text" name="customerName"/></p>
            <p>Thêm:
                <input type="text" name="customerBirth"/></p>
            <p>Thêm:
                <input type="text" name="customerGender"/></p>
            <p>Thêm:
                <input type="text" name="customerIdCard"/></p>
            <p>Thêm:
                <input type="text" name="customerPhone"/></p>
            <p>Thêm:
                <input type="text" name="customerEmail"/></p>
            <p>Thêm:
                <input type="text" name="customerAddress"/></p>
            <p>
                <button type="submit" name="action" value="create">thêm mới</button>
            </p>
        </form>
    </div>
</div>
</div>
</body>
</html>
