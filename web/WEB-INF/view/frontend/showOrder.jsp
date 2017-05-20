<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/3/22
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="basePath" value="${pageContext.request.scheme}://
${pageContext.request.serverName}:${pageContext.request.serverPort}${path}/"/>

<html>
<head>
    <base href="${basePath}">
    <link href="css/index.css" type="text/css" rel="stylesheet"/>
    <title>Title</title>
</head>
<body>
<h>西蒙购物网</h>
<hr>
<table width="100%">
    <tr>
        <td align="left">登陆用户：<span style="...">${username}</span></td>
        <td align="right"><a href="user/logout" target="_parent">注销</a></td>
    </tr>
</table>
<hr>
<h3>${username}的订单</h3>
<table border="1">
    <tr>
        <td>订单编号</td>
        <td>${lastOrder.id}</td>
    </tr>
    <tr>
        <td>用户名</td>
        <td>${lastOrder.username}</td>
    </tr>
    <tr>
        <td>联系电话</td>
        <td>${lastOrder.telephone}</td>
    </tr>
    <tr>
        <td>总金额</td>
        <td>${totalPrice}</td>
    </tr>
    <tr>
        <td>送货地址</td>
        <td>${lastOrder.deliveryAddress}</td>
    </tr>
</table>
<hr>
<a href="order/pay" onclick="alert('${lastOrder.username},支付成功！')">支付</a>
</body>
</html>
