<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/7/2022
  Time: 8:29 PM
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
        <h3>Thêm mới dịch vụ</h3>
        <form action="/facility?action=create" method="post">
            <select onchange="clickFacility()" id="type_facility" name="facility_type">
                <option value="none">chọn dịch vụ muốn thêm</option>
                <option value="1">villa</option>
                <option value="2">house</option>
                <option value="3">room</option>
            </select>
            <table>
                <tr>
                    <td id="facilityName">Thêm tên dịch vụ:<br><input type="text"  name="facilityName"></td>
                </tr>
                <tr>
                    <td  id="facilityArea">Thêm diện tích:<br><input type="text" name="facilityArea"/></td>
                </tr>
                <tr>
                    <td id="facilityCost">Thêm giá:<br><input type="text"  name="facilityCost"/></td>
                </tr>
                <tr>
                    <td id="facilityMaxPeople">Thêm số người tối da:<br>
                        <input type="text"  name="facilityMaxPeople">
                    </td>
                </tr>
                <tr>
                    <td id="rentTypeId">Thêm kiểu thuê:<br>
                        <%--                                                <input type="text" name="rentTypeId"/>--%>
                        <select  name="rentTypeId">
                            <c:forEach var="rentType" items="${rentTypeList}">
                                <option value="${rentType.rentTypeId}">${rentType.rentTypeName}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td id="standardRoom">Thêm tiêu chuẩn phòng:<br><input type="text"  name="standardRoom"/></td>
                </tr>
                <tr>
                    <td id="description">Thêm mô tả phòng:<input type="text"  name="description"/></td>
                </tr>
                <tr>
                    <td  id="poolArea">Thêm diện tích hồ bơi:<input type="number" value="0" name="poolArea"/></td>
                </tr>
                <tr>
                    <td id="numberOfFloor">Thêm số tầng:<input type="number" value="0" min="1" name="numberOfFloor"/></td>
                </tr>
                <tr>
                    <td id="facilityFree">Thêm dịch vụ miễn phí: <input type="text"  name="facilityFree"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" name="action" value="create">thêm mới</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script>
        function clickFacility() {
            let type = document.getElementById("type_facility").value;
            switch (type) {
                case "none":
                    document.getElementById("standardRoom").style.display = "none";
                    document.getElementById("description").style.display = "none";
                    document.getElementById("poolArea").style.display = "none";
                    document.getElementById("numberOfFloor").style.display = "none";
                    document.getElementById("facilityFree").style.display = "none";
                    break;
                case "1":
                    document.getElementById("standardRoom").style.display = "block";
                    document.getElementById("description").style.display = "block";
                    document.getElementById("poolArea").style.display = "block";
                    document.getElementById("numberOfFloor").style.display = "block";
                    document.getElementById("facilityFree").style.display = "none";
                    break;
                case "2":
                    document.getElementById("standardRoom").style.display = "block";
                    document.getElementById("description").style.display = "block";
                    document.getElementById("poolArea").style.display = "none";
                    document.getElementById("numberOfFloor").style.display = "block";
                    document.getElementById("facilityFree").style.display = "none";
                    break;
                case "3":
                    document.getElementById("standardRoom").style.display = "none";
                    document.getElementById("description").style.display = "block";
                    document.getElementById("poolArea").style.display = "none";
                    document.getElementById("numberOfFloor").style.display = "none";
                    document.getElementById("facilityFree").style.display = "block";
                    break;
            }
        }
    </script>
</div>
</body>
</html>
