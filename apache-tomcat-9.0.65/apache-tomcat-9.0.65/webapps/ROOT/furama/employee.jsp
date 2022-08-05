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
<nav class="navbar navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="/index.jsp">
            <img src="https://phuongviethcm.com/wp-content/uploads/2019/07/FURAMA.png" alt="" width="50"
                 height="50">
        </a>
        <span>Võ như vinh</span>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow-sm p-3 bg-body rounded"
     style="font-weight: bold;font-size: 27px">
    <div class="container-fluid">
        <a class="navbar-brand text-black-500" href="/index.jsp">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-black-500" aria-current="page"
                       href="furama/employee.jsp">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="#">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500 " href="#" tabindex="-1">Contract</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<div class="container text-center shadow-sm p-3 bg-body rounded">
    <div class="">
        <div class="row">
            <h1>Danh sách nhân viên</h1>
        </div>
        <div class="row">
            <%--        bảng nhân viên --%>
            <table class="table table-hover shadow-sm p-3 mt-5 bg-body rounded"  id="table" style="width:100%;">
                <tr class="bg-primary">
                    <th>1</th>
                    <th>2</th>
                    <th>3</th>
                    <th>4</th>
                    <th>5</th>
                    <th>6</th>
                    <th>7</th>
                    <th>8</th>
                    <th>9</th>
                    <th>10</th>
                    <th>11</th>
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

        <%--        xoá----------------------------------------------                        --%>
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
                <h3>Thêm mới nhân viên</h3>
                <form action="" method="post" >
                    <p>Thêm:
                        <input type="text"/></p>
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
                        <button type="submit" ><a href="#table"> thê mới</a></button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>

<footer class="text-center text-white" style="background-color: #caced1;">
    <!-- Grid container -->
    <div class="container p-4">
        <!-- Section: Images -->
        <section class="">
            <div class="row">
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded"
                         data-ripple-color="light">
                        <img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/113.webp"
                             class="w-100"/>
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/111.webp" class="w-100"/>
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded"
                         data-ripple-color="light">
                        <img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/112.webp"
                             class="w-100"/>
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/114.webp" class="w-100"/>
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/115.webp" class="w-100"/>
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/116.webp"
                             class="w-100"/>
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Images -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2020 Copyright:
        <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
