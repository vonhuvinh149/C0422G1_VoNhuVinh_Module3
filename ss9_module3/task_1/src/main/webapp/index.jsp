<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/27/2022
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/task1" method="post">
    <p><input type="text" placeholder="nhập thông tin sản phẩm" name="Product Description"></p>
    <p><input type="number" placeholder="nhập giá niêm yết" name="List Price"></p>
    <p><input type="number" placeholder="tỉ lệ chiết khấu của sản phẩm" name="Discount Percent"></p>
    <p><button type="submit" >Tính</button></p>
  </form>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  </body>
</html>
