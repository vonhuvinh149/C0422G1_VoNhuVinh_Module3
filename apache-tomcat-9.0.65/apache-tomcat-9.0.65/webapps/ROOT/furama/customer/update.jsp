<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/7/2022
  Time: 4:16 PM
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
        <h3>cập nhật nhân viên</h3>
        <form action="/customer" method="post">
            <table>
                <tr>
                    <td>cập nhật loại khách hàng:</td>
                    <td><select name="customerTypeId" >
                        <c:forEach var="customerType" items="${customerTypeList}">
                            <c:if test="${customerType.customerTypeId == customer.customerTypeId}">
                                <option value="${customerType.customerTypeId}">${customerType.customerTypeName}</option>
                            </c:if>
                        </c:forEach>
                        <c:forEach var="customerType" items="${customerTypeList}">
                            <c:if test="${customerType.customerTypeId != customer.customerTypeId}">
                                <option value="${customerType.customerTypeId}">${customerType.customerTypeName}</option>
                            </c:if>
                        </c:forEach>
                    </select></td>
                </tr>
                <tr>
                    <td>cập nhật tên khách hàng:</td>
                    <td><input type="text" value="${customer.customerName}" name="customerName"/></td>
                </tr>
                <tr>
                    <td>cập nhật ngày sinh:</td>
                    <td><input type="date" value="${customer.customerBirth}" name="customerBirth"/></td>
                </tr>
                <tr>
                    <td>cập nhật giới tính:</td>
                    <td>
                        <select name="customerGender">
                            <c:if test="${customer.customerGender == true}">
                                <option value="true">Nam</option>
                                <option value="false">Nữ</option>
                            </c:if>
                            <c:if test="${customer.customerGender == false}">
                                <option value="false">Nữ</option>
                                <option value="true">Nam</option>
                            </c:if>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>cập nhât chứng minh nhân dân:</td>
                    <td><input type="text" value="${customer.customerIdCard}" name="customerIdCard"/></td>
                </tr>
                <tr>
                    <td>cập nhật số điện thoại:</td>
                    <td><input type="text" value="${customer.customerPhone}" name="customerPhone"/></td>
                </tr>
                <tr>
                    <td>cập nhật email:</td>
                    <td><input type="text" value="${customer.customerEmail}" name="customerEmail"/></td>
                </tr>
                <tr>
                    <td>cập nhật địa chỉ:</td>
                    <td><input type="text" value="${customer.customerAddress}" name="customerAddress"/></td>
                </tr>
                <tr>
                    <td>id</td>
                    <td><input type="text" readonly value="${customer.customerId}" name="customerId"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" name="action" value="update">cập nhật</button>
                    </td>
                </tr>

            </table>
        </form>
    </div>
</div>
</body>
</html>
