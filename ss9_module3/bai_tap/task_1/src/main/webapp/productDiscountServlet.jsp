<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/27/2022
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
    </title>
</head>
<body>
<h3>
    Thông tin sản phẩm : ${displayProductDescription};
</h3>
<h3>
    giá niêm yết sản phẩm : ${displayListPrice};
</h3>
<h3>
    phần trăm chiết khấu : ${displayDiscountPercent};
</h3>
<h3>
    lượng chiết khấu : ${displayDiscountAmount};
</h3>
<h3>
    giá sau khi chiết khấu chiết khấu : ${displayProductAfterDiscount};
</h3>
</body>
</html>
