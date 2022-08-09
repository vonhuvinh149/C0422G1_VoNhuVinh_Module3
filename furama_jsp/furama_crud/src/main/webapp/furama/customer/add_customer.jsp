<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h3>Thêm mới khách hàng</h3>
        <form action="/customer" method="post">
            <table>
                <tr>
                    <td>Thêm loại khách hàng:</td>
                    <td><select name="customerTypeId">
                        <c:forEach var="customerType" items="${customerTypeList}">
                            <option value="${customerType.customerTypeId}">${customerType.customerTypeName}</option>
                        </c:forEach>
                    </select></td>
                </tr>
                <tr>
                    <td>Thêm tên khách hàng:</td>
                    <td><input type="text" name="customerName" value="${customer.customerName}"/></td>
                    <td ><span style="color: red">${nameErr}</span></td>
                </tr>
                <tr>
                    <td><span>Thêm ngày sinh:</span></td>
                    <td><input type="date" name="customerBirth" value=""/></td>
                    <td><span style="color: red">${birthdayErr}</span></td>
                </tr>
                <tr>
                    <td>Thêm giới tính:</td>
                    <td>
                        <select name="customerGender">
                            <option value="none">Chọn giới tính</option>
                            <option value="true">Nam</option>
                            <option value="false">Nữ</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><span>Thêm chứng minh nhân dân:</span></td>
                    <td><input type="text" name="customerIdCard"/></td>
                    <td ><span style="color: red">${idErr}</span></td>
                </tr>
                <tr>
                    <td><span>Thêm số điện thoại:</span></td>
                    <td><input type="text" name="customerPhone"/></td>
                    <td><span style="color: red">${phoneErr}</span></td>
                </tr>
                <tr>
                    <td><span>Thêm email:</span></td>
                    <td><input type="text" name="customerEmail"/></td>
                    <td><span style="color:red">${emailErr}</span></td>
                </tr>
                <tr>
                    <td><span>Thêm địa chỉ:</span></td>
                    <td><input type="text" name="customerAddress"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" name="action" value="create">thêm mới</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
