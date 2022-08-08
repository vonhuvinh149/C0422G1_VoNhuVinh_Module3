<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/7/2022
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="furama/css.css">
</head>
<body>
<%@include file="/furama/include/header.jsp" %>
<div class="container-fluid text-center shadow-sm p-3 bg-body rounded list_furama mt-3">
    <div class="color">
        <div class="row">
            <h1>Danh sách dịch vụ</h1>
        </div>
        <div class="row">
            <%--        bảng nhân viên --%>
            <table class="table table-hover shadow-sm p-3 mt-5 bg-body rounded" id="table" style="width:100%;">
                <tr class="bg-primary">
                    <th>facilityId</th>
                    <td>facilityName</td>
                    <th>facilityArea</th>
                    <th>facilityCost</th>
                    <th>facilityMaxPeople</th>
                    <th>rentTypeId</th>
                    <th>facilityTypeId</th>
                    <th>standardRoom</th>
                    <th>Description</th>
                    <th>poolArea</th>
                    <th>numberOfFloor</th>
                    <th>facilityFree</th>
                    <th colspan="2">Actions</th>
                </tr>
                <c:forEach var="facility" items="${facilityList}">
                    <tr>
                        <td>${facility.facilityId}</td>
                        <td>${facility.facilityName}</td>
                        <td>${facility.facilityArea}</td>
                        <td>${facility.facilityCost}</td>
                            <%--                        <c:if test="${customer.customerGender}">--%>
                            <%--                            <td>Nam</td>--%>
                            <%--                        </c:if>--%>
                            <%--                        <c:if test="${!customer.customerGender}">--%>
                            <%--                            <td>Nữ</td>--%>
                            <%--                        </c:if>--%>
                        <td>${facility.facilityMaxPeople}</td>
                            <%-------------------------------------%>
                        <c:if test="${facility.rentTypeId == 1}">
                            <td>year</td>
                        </c:if>
                        <c:if test="${facility.rentTypeId == 2}">
                            <td>month</td>
                        </c:if>
                        <c:if test="${facility.rentTypeId == 3}">
                            <td>day</td>
                        </c:if>
                        <c:if test="${facility.rentTypeId  == 4}">
                            <td>house</td>
                        </c:if>
                            <%-- -----------------------------------------------%>
                        <c:if test="${facility.facilityTypeId == 1}">
                            <td>villa</td>
                        </c:if>
                        <c:if test="${facility.facilityTypeId == 2}">
                            <td>house</td>
                        </c:if>
                        <c:if test="${facility.facilityTypeId == 3}">
                            <td>room</td>
                        </c:if>
                        <td>${facility.standardRoom}</td>
                        <td>${facility.description}</td>
                        <td>${facility.poolArea}</td>
                        <td>${facility.numberOfFloor}</td>
                        <td>${facility.facilityFree}</td>
                        <td>
                            <a class="btn btn-primary" href="/facility?action=update&facilityID=${facility.facilityId}">update</a>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" onclick="deleteFacility(${facility.facilityId})" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="/facility?action=create">thêm mới</a>
        </div>
    </div>
</div>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Facility</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ban co muon xoa khong
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" id="confirmFacility" class="btn btn-primary"></button>
            </div>
        </div>
    </div>
</div>
<%@include file="/furama/include/footer.jsp" %>
<script>
    function deleteFacility(id){
        document.getElementById("confirmFacility").innerHTML = '<a class="text-white text-decoration-none" href="/facility?action=delete&facilityID='+id+'">xoa</a>'
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>


</html>
