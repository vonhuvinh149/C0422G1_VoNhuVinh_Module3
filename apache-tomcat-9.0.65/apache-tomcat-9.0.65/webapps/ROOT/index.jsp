<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/3/2022
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="https://phuongviethcm.com/wp-content/uploads/2019/07/FURAMA.png" alt="" width="50"
                 height="50">
        </a>
        <span>Võ như vinh</span>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top "
     style="opacity: .8;font-weight: bold;font-size: 27px">
    <div class="container-fluid">
        <a class="navbar-brand text-black-500" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-black-500" aria-current="page" href="furama/employee.jsp">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="#">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="furama/service.jsp">Service</a>
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
<div class="container-fluid ">
    <div class="row">
        <img class="position-relative w-100"
             src="https://thodiavn24h.com/wp-content/uploads/2020/05/home-furama-resort-danang.jpg"
             alt="responsive image">
    </div>
    <div class="row row-cols-1 row-cols-md-3 g-4 m-5 ">
        <div class="col">
            <div class="card h-100">
                <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="card-img-top"
                     alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                        additional content. This content is a little bit longer.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Võ Như Vinh</small>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="card-img-top"
                     alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional
                        content.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Võ Như Vinh</small>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="card-img-top"
                     alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                        additional content. This card has even longer content than the first to show that equal
                        height
                        action.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Võ Như Vinh</small>
                </div>
            </div>
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
<script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
