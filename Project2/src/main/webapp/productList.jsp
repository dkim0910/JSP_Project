<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<table border="1">
    <tr>
        <th>Product ID</th>
        <th>Brand</th>
        <th>Name</th>
        <th>Price</th>
        <th>Image</th>
        <th>CATEGORY</th>
        <th>subCategory</th>
    </tr>
    <c:forEach var="product" items="${requestScope.products}">
        <tr>
            <td>${product.product_id}</td>
            <td>${product.brand}</td>
            <td>${product.product_name}</td>
            <td>${product.price_amount}</td>
            <td><img src="${product.image_url}"/></td>
            <td>${product.CATEGORY}</td>
            <td>${product.subCategory }</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
