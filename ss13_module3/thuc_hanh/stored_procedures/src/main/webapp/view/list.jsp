<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User Management Application</title>
    <link href="/bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Thêm mới</a>
    </h2>
</center>
<form action="/users?action=findByCountry" method="post">
    <input type="text" name="country">
    <button type="submit">Search</button>
</form>
<div>
    <button onclick="location.href='/users?action=selectSortName';">sap xep</button>
</div>
<div align="center">
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th colspan="2">Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal-${user.id}">
                        delete
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal-${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    bạn có muốn xoá ko
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">không</button>
                                    <a class="btn btn-primary" href="/users?action=delete&id=${user.id} ">có</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <!-- Button trigger modal -->
            </tr>
        </c:forEach>
    </table>
</div>
<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>