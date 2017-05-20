<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/3/17
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="basePath" value="${pageContext.request.scheme}://
${pageContext.request.serverName}:${pageContext.request.serverPort}${path}/"/>
<html>
<head>
    <base href="${basePath}">
    <title>Title</title>
    <title>显示购物车</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
<h3>${username} 的购物车</h3>
<table border="1">
    <tr>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>销售价格</th>
        <th>购买数量</th>
        <th>合计金额</th>
        <th>用户操作</th>
    </tr>
    <c:forEach var="shoppingItem" items="${shoppingTable}">
        <tr>
            <td>${shoppingItem.id}</td>
            <td>${shoppingItem.name}</td>
            <td>${shoppingItem.price}</td>
            <td>${shoppingItem.amount}</td>
            <td>${shoppingItem.sum}</td>
            <td><a href="product/operateCart?id=${shoppingItem.id}&operate=delete">删除</a></td>
        </tr>
    </c:forEach>
    <tr>
        <th>总金额</th>
        <td></td>
        <td></td>
        <td></td>
        <c:choose>
            <c:when test="${totalPrice==0.00}">
                <th style="color: red;">￥0.0</th>
            </c:when>
            <c:otherwise>
                <th style="color: red;">${totalPrice}</th>
            </c:otherwise>
        </c:choose>
        <td><a href="product/operateCart?id=${product.id}&operate=delete">删除</a></td>
    </tr>
</table>
<hr>
<c:choose>
    <c:when test="${totalPrice==0.0}">
        <a href="order/toMakeOrder?totalPrice=0.0">生成订单</a>
    </c:when>
    <c:otherwise>
        <a href="order/toMakeOrder?totalPrice=${totalPrice}">生成订单</a>
    </c:otherwise>
</c:choose>

</body>
</html>
