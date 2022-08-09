<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="furama/furamacss/navbarcss.css">
</head>
<body>
<nav class="navbar navbar-light bg-light" id="header">
    <div class="container-fluid">
        <a class="navbar-brand mb-3" href="#">
            <img src="https://phuongviethcm.com/wp-content/uploads/2019/07/FURAMA.png" alt="" width="100"
                 height="100">
        </a>
        <span>Võ như vinh</span>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-white text-white bg-success sticky-top" id="navbar">
    <div class="container-fluid">
        <a class="navbar-brand text-black-500" href="http://localhost:8080/">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-black-500" aria-current="page"
                       href="furama/employee/list_employee.jsp">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="/customer">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="/facility?action">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500 " href="furama/contract/list_contract.jsp" tabindex="-1">Contract</a>
                </li>
            </ul>
            <form class="d-flex me-5 ">
                <input class="form-control me-2 " type="search" placeholder="Search..." aria-label="Search">
                <button class="btn btn-outline-light mt-2 modalSearch" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
</body>
</html>