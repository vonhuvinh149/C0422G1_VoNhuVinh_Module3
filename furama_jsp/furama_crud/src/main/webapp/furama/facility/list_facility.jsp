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
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="../../bootstrap-5.0.2-dist/DataTables/DataTables-1.12.1/css/dataTables.bootstrap5.min.css">
</head>
<body>
<%@include file="/furama/include/header.jsp" %>
<div class="container-fluid text-center shadow-sm p-3 bg-body rounded list_furama mt-3">
    <div class="row">
        <h1>Danh sách dịch vụ</h1>
    </div>
    <div class="row">
        <form action="/facility" method="post">
            <input type="text" placeholder="tìm kiếm theo tên" name="name">
            <button type="submit" name="action" value="search">search</button>
        </form>
    </div>
    <div class="row container mw-100">
        <div class="">
            <table class="table table-hover shadow-sm p-3 mt-5 bg-body rounded " id="table">
                <thead>
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
                    <th>Actions</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="facility" items="${facilityList}">
                    <tr>
                        <td>${facility.facilityId}</td>
                        <td>${facility.facilityName}</td>
                        <td>${facility.facilityArea}</td>
                        <td>${facility.facilityCost}</td>
                        <td>${facility.facilityMaxPeople}</td>
                        <c:forEach var="rentType" items="${rentTypeList}">
                            <c:if test="${rentType.rentTypeId == facility.rentTypeId}">
                                <td>${rentType.rentTypeName}</td>
                            </c:if>
                        </c:forEach>

                        <c:forEach var="facilityType" items="${facilityListType}">
                            <c:if test="${facilityType.facilityTypeID == facility.facilityTypeId}">
                                <td>${facilityType.facilityTypeName}</td>
                            </c:if>
                        </c:forEach>
                            <%-- -----------------------------------------------%>

                        <td>${facility.standardRoom}</td>
                        <td>${facility.description}</td>
                        <td>${facility.poolArea}</td>
                        <td>${facility.numberOfFloor}</td>
                        <td>${facility.facilityFree}</td>
                        <td>
                            <a class="btn btn-primary" href="/facility?action=update&facilityID=${facility.facilityId}">update</a>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger mb-1"
                                    onclick="deleteFacility(${facility.facilityId})" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal1">
                                delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <a href="/facility?action=create" class="btn btn-success">thêm mới</a>
</div>
</div>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content c0422g1">
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
<script src="../../jquery-3.6.0.min.js"></script>
<script src="../../bootstrap-5.0.2-dist/DataTables/DataTables-1.12.1/js/jquery.dataTables.min.js"></script>
<script src="../../bootstrap-5.0.2-dist/DataTables/DataTables-1.12.1/js/dataTables.bootstrap5.min.js"></script>
<script src="../../bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script>
    function deleteFacility(id) {
        document.getElementById("confirmFacility").innerHTML = '<a class="text-white text-decoration-none" href="/facility?action=delete&facilityID=' + id + '">xoa</a>'
    }
</script>
<script>
    $(document).ready(function () {
        $('#table').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5,
        });
    });
</script>

</body>


</html>
