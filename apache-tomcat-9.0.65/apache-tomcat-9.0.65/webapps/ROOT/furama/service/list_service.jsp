<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/4/2022
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/furama/include/header.jsp" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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


<div class="container text-center shadow-sm p-3 bg-body rounded">
    <div class="">
        <div class="row">
            <h1>Danh sách dịch vụ</h1>
        </div>
        <div class="row">
            <%--        bảng nhân viên --%>
            <table class="table table-hover shadow-sm p-3 mt-5 bg-body rounded" id="table" style="width:100%;">
                <tr class="bg-primary">
                    <th>mả dịch vụ</th>
                    <th>tên dịch vụ</th>
                    <th>diện tích sử dụng</th>
                    <th>ci phí thuê</th>
                    <th>số lượng người</th>
                    <th>kiểu thuê</th>
                    <th>tiêu chuẩn phòng</th>
                    <th>mô tả</th>
                    <th>số tầng</th>
                    <th>diện tích hồ bơi</th>
                    <th>dịch vụ free</th>
                    <th colspan="3">Chức năng</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>5</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>d</td>
                    <td>2</td>
                    <td>3</td>
                    <td><a href="#create">add</a></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            sửa
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            xoá
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>5</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>d</td>
                    <td>2</td>
                    <td>3</td>
                    <td><a href="#create">add</a></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            sửa
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            xoá
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>5</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>d</td>
                    <td>2</td>
                    <td>3</td>
                    <td><a href="#create">add</a></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            sửa
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            xoá
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>5</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>d</td>
                    <td>2</td>
                    <td>3</td>
                    <td><a href="#create">add</a></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            sửa
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            xoá
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>5</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>d</td>
                    <td>2</td>
                    <td>3</td>
                    <td><a href="#create">add</a></td>

                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            sửa
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            xoá
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>5</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>d</td>
                    <td>2</td>
                    <td>3</td>
                    <td><a href="#create">add</a></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            sửa
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            xoá
                        </button>
                    </td>
                </tr>

            </table>
        </div>
        <!-- Button trigger modal -->
        <!-- Modal -->
        <%--        sửa ---------------------------------------------------------------------------------------------------------%>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="">
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                            <p>sửa: <input type="text"></p>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">cancel</button>
                        <button type="submit" class="btn btn-primary">update</button>
                    </div>
                </div>
            </div>
        </div>

        <%--        xoá          ----------------------------------------------                        --%>
        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel1">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">cancel</button>
                        <button type="button" class="btn btn-primary">delete</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5 d-flex justify-content-center " id="create">
            <div class="border border-dark p-5 w-75 shadow-sm p-3 mt-3 bg-body rounded overflow-hidden">
                <h3>Thêm mới dịch vụ</h3>

                <form action="" method="post">
                    <p><select>
                        <option>villa</option>
                        <option>house</option>
                        <option>room</option>
                    </select></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="date"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>Thêm:
                        <input type="text"/></p>
                    <p>
                        <button type="submit"><a class="btn btn-" href="#table"> thê mới</a></button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="/furama/include/footer.jsp" %>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
