<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 9/6/2022
  Time: 3:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

<h1>Create new product</h1>

<p>
    <c:if test="${requestScope['message'] != null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>

<p>
    <a href="${pageContext.request.contextPath}/products">Back to product list</a>
</p>

<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td><label for="price">Price:</label></td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td><label for="description">Description:</label></td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td><label for="manufacturer">Manufacturer:</label></td>
                <td><input type="text" name="manufacturer" id="manufacturer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create new product"></td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
