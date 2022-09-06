<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 9/6/2022
  Time: 4:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

<h1>Delete Product</h1>

<p>
    <a href="${pageContext.request.contextPath}/products">Back to product list</a>
</p>

<form method="post">
    <p>Are you sure</p>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td>${requestScope['product'].getName()}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${requestScope['product'].getPrice()}</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${requestScope['product'].getDescription()}</td>
            </tr>
            <tr>
                <td>Manufacturer:</td>
                <td>${requestScope['product'].getManufacturer()}</td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete product"></td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
