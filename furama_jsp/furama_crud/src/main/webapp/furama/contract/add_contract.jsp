<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/6/2022
  Time: 5:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%@include file="/furama/include/header.jsp" %>
<div class="container-fluid mt-5 d-flex justify-content-center ">

    <form action="">
        <table cellpadding="10">
            <tr><td colspan="2"><h1>Thêm mới hợp đồng</h1></td></tr>
            <tr>
                <td>Ngày bắt đầu:</td>
                <td><input type="date"></td>
            </tr>
            <tr>
                <td>Ngày kết thúc:</td>
                <td><input type="date"></td>
            </tr>
            <tr>
                <td>Tiền gửi:</td>
                <td><input type="number"></td>
            </tr>
            <tr>
                <td>Tổng tiền:</td>
                <td><input type="number"></td>
            </tr>
            <tr>
                <td>Khách hàng thuê dịch vụ:</td>
                <td><select>
                    <option value="">Khách hàng 1</option>
                    <option value="">Khách hàng 2</option>
                    <option value="">Khách hàng 3</option>
                </select></td>
            </tr>
            <tr>
                <td>Dịch vụ:</td>
                <td><select name="" id="">
                    <option value="">dịch vụ 1</option>
                    <option value="">dịch vụ 2</option>
                    <option value="">dịch vụ 3</option>
                </select>
                </td>
            </tr>
            <tr>
                <td><a href="">add dvdk</a></td>
            </tr>
            <tr>
                <td>
                    <button type="button">Huỷ bỏ</button>
                </td>
                <td>
                    <button type="submit">Tạo hợp đồng</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
