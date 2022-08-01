<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<div>
    <div style="text-align: center">
        <h1>User Management</h1>
        <h2>
            <a  href="/users?action=users" role="button">List All Users</a>
        </h2>
    </div>
    <div>
        <form method="post" action="/users?action=create">
            <table border="1">
                <tr>
                    <th>User Name:</th>
                    <td>
                        <input type="text" name="name" id="name" required/>
                    </td>
                </tr>
                <tr>
                    <th>User Email:</th>
                    <td>
                        <input type="email" name="email" id="email" required/>
                    </td>
                </tr>
                <tr>
                    <th>Country:</th>
                    <td>
                        <input type="text" name="country" id="country" required/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>