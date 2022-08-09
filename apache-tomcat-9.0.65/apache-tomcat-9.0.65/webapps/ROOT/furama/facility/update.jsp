<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/8/2022
  Time: 3:33 AM
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
        <h3>cập nhật dịch vụ</h3>
        <form action="/facility" method="post">
            <table>
                <tr>

                    <td>cập nhật tên:</td>
                    <td><input type="text" value="${facility.facilityName}" name="facilityName"></td>
                </tr>
                <tr>
                    <td>cập nhật diện tích:</td>
                    <td><input type="text" value="${facility.facilityArea}" name="facilityArea"/></td>
                </tr>
                <tr>
                    <td>cập nhật giá:</td>
                    <td><input type="number" value="${facility.facilityCost}" name="facilityCost"/></td>
                </tr>
                <tr>
                    <td>cập nhật số người tối đa:</td>
                    <td><input type="number" value="${facility.facilityMaxPeople}" name="facilityMaxPeople"></td>
                    <%--                    <td>--%>
                    <%--                        <select name="customerGender">--%>
                    <%--                            <c:if test="${customer.customerGender == true}">--%>
                    <%--                                <option value="true">Nam</option>--%>
                    <%--                                <option value="false">Nữ</option>--%>
                    <%--                            </c:if>--%>
                    <%--                            <c:if test="${customer.customerGender == false}">--%>
                    <%--                                <option value="false">Nữ</option>--%>
                    <%--                                <option value="true">Nam</option>--%>
                    <%--                            </c:if>--%>
                    <%--                        </select>--%>
                    <%--                    </td>--%>
                </tr>
                <tr>
                    <td>cập nhât kiểu thuê:</td>
                    <td><input type="text" value="${facility.rentTypeId}" name="rentTypeId"/></td>
                </tr>
                <tr>
                    <td>cập nhật loại dịch vụ:</td>
                    <td><input type="number" value="${facility.facilityTypeId}" name="facilityTypeId"/></td>
                </tr>
                <tr>
                    <td>cập nhật tieu chuan:</td>
                    <td><input type="text" value="${facility.standardRoom}" name="standardRoom"/></td>
                </tr>
                <tr>
                    <td>cập nhật mo ta:</td>
                    <td><input type="text" value="${facility.description}" name="description"/></td>
                </tr>
                <tr>
                    <td>cap nhat dien tich ho boi</td>
                    <td><input type="text"  value="${facility.poolArea}" name="poolArea"></td>
                </tr> <tr>
                    <td>so tang</td>
                    <td><input type="text"  value="${facility.numberOfFloor}" name="numberOfFloor"></td>
                </tr>
                <tr>
                    <td>cap nhat dich vu mien phi</td>
                    <td><input type="text"  value="${facility.facilityFree}" name="facilityFree"></td>
                </tr>
                <tr>
                    <td>Ma dich vu</td>
                    <td><input type="text" readonly value="${facility.facilityId}" name="facilityId"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" name="action" value="update">cập nhật</button>
                    </td>
                </tr>

            </table>
        </form>
    </div>
</div>

</body>
</html>
