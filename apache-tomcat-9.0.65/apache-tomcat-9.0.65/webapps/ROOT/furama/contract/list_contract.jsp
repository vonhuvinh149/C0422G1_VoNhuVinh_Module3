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
<div class="container text-center shadow-sm p-3 bg-body rounded">
    <div class="">
        <div class="row">
            <h1>Danh sách Hợp đồng</h1>
        </div>
        <div class="row">
            <table class="table table-hover shadow-sm p-3 mt-5 bg-body rounded" id="table" style="width:100%;">
                <tr class="bg-primary">
                    <th>#</th>
                    <th>Dịch vụ</th>
                    <th>Khách hàng</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Tiền đặt cọc</th>
                    <th>Tổng tiền</th>
                    <th colspan="2">Các dịch vụ đi kèm</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>d</td>
                    <td>5</td>
                    <td>2</td>
                    <td>3</td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                           add
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            danh sách dvdk
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
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                           add
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            danh sách dvdk
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
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            add
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            danh sách dvdk
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
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            add
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal1">
                            danh sách dvdk
                        </button>
                    </td>
                </tr>

                <!-- Button trigger modal -->
                <!-- Modal -->
                <%--        sửa ---------------------------------------------------------------------------------------------------------%>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="">
                                    <p>Thêm mới hợp đồng chi tiết</p>
                                    <p>thêm: <input type="text"></p>
                                    <p>thêm: <input type="text"></p>
                                    <p>thêm: <input type="text"></p><p>thêm: <input type="text"></p>
                                    <p>thêm: <input type="text"></p>
                                    <p>thêm: <input type="text"></p>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">cancel</button>
                                <button type="submit" class="btn btn-primary">update</button>
                            </div>
                        </div>
                    </div>
                </div>
            </table>
                <%--        xoá----------------------------------------------                        --%>
                <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <select name="" id="">
                                    <option value="">dịch vụ 1</option>
                                    <option value="">dịch vụ 2</option>
                                    <option value="">dịch vụ 3</option>
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">cancel</button>
                                <button type="button" class="btn btn-primary">delete</button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
<%@include file="/furama/include/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
