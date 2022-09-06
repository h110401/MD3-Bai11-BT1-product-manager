<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

<h1>Edit Product</h1>

<p>
    <c:if test="${requestScope['message']!=null}">
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
                <td><input type="text" name="name" id="name" value="${requestScope['product'].getName()}"></td>
            </tr>
            <tr>
                <td><label for="price">Price:</label></td>
                <td><input type="number" name="price" id="price" value="${requestScope['product'].getPrice()}"></td>
            </tr>
            <tr>
                <td><label for="description">Description:</label></td>
                <td><input type="text" name="description" id="description"
                           value="${requestScope['product'].getDescription()}"></td>
            </tr>
            <tr>
                <td><label for="manufacturer">Manufacturer:</label></td>
                <td><input type="text" name="manufacturer" id="manufacturer"
                           value="${requestScope['product'].getManufacturer()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit product"></td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
