<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/4/2022
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="furama/furamacss/modaldelete.css">
    <style>
        body {
            background-color: #EEEEEE;
        }

        input {
            width: 450px;
        }
    </style>
</head>
<body>
<%@include file="/furama/include/header.jsp" %>
<div class="container text-center shadow-sm mt-3 p-3 bg-body rounded">
    <div class="">
        <div class="row">
            <h1>Danh sách Khách hàng</h1>
        </div>
        <div class="row mt-3">
            <form action="/customer?action=search" method="post">
                <input type="search" name="name" placeholder="tim kiem theo ten">
                <button type="submit">Search</button>
            </form>
        </div>
        <div class="row">
            <%--        bảng nhân viên --%>
            <table class="table table-hover shadow-sm p-3 mt-5 bg-body rounded" id="table" style="width:100%;">
                <tr class="bg-primary">
                    <th>ID</th>
                    <td>TypeId</td>
                    <th>Name</th>
                    <th>Birthday</th>
                    <th>Gender</th>
                    <th>Id Card</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Ardress</th>
                    <th colspan="2">Actions</th>
                </tr>
                <c:forEach var="customer" items="${customerList}">
                    <tr>
                        <td>${customer.customerId}</td>
                        <td>${customer.customerTypeId}</td>
                        <td>${customer.customerName}</td>
                        <td>${customer.customerBirth}</td>
                        <c:if test="${customer.customerGender}">
                            <td>Nam</td>
                        </c:if>
                        <c:if test="${!customer.customerGender}">
                            <td>Nữ</td>
                        </c:if>
                        <td>${customer.customerIdCard}</td>
                        <td>${customer.customerPhone}</td>
                        <td>${customer.customerEmail}</td>
                        <td>${customer.customerAddress}</td>
                        <td>
                            <a class="btn btn-primary" href="/customer?action=update&customerId=${customer.customerId}">update</a>
                        </td>
                        <td>
                            <button type="button" onclick="deleteCustomer(${customer.customerId})"
                                    class="btn btn-danger mb-1" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content c0422g1">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    bạn có muốn xoá ko
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    <button type="button" id="confirm" class="btn btn-primary"></button>
                </div>
            </div>
        </div>
    </div>
    <a href="/customer?action=create" class="btn btn-success">thêm mới khách hàng</a>
</div>
<%@include file="/furama/include/footer.jsp" %>
<script>
    function deleteCustomer(id) {
        document.getElementById("confirm").innerHTML = '<a class="text-white text-decoration-none" href="/customer?action=delete&customerId=' + id + '">co</a>'
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
