<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 9/6/2022
  Time: 3:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

<h1>Product List</h1>

<p><a href="${pageContext.request.contextPath}/products?action=create">Create new product</a></p>

<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Manufacturer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${requestScope['products']}" var="product">
        <tr>
            <td><a href="${pageContext.request.contextPath}/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getManufacturer()}</td>
            <td><a href="${pageContext.request.contextPath}/products?action=edit&id=${product.getId()}">
                <button>Edit</button>
            </a></td>
            <td><a href="${pageContext.request.contextPath}/products?action=delete&id=${product.getId()}">
                <button>Delete</button>
            </a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
