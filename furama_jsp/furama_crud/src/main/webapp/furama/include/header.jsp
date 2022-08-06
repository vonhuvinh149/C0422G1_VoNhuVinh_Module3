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
     style="font-weight: bold;font-size: 27px">
    <div class="container-fluid">
        <a class="navbar-brand text-black-500" href="furama/index.jsp">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-black-500" aria-current="page" href="furama/employee/list_employee.jsp">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="customer?action=default">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500" href="">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-black-500 " href="furama/contract/list_contract.jsp" tabindex="-1">Contract</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
</body>
</html>
