<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 9/6/2022
  Time: 5:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Details</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

<h1>Product Details</h1>

<p>
    <a href="${pageContext.request.contextPath}/products">Back to product list</a>
</p>

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
    </table>
</fieldset>

</body>
</html>
