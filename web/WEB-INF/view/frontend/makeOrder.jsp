<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/3/22
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="basePath" value="${pageContext.request.scheme}://
${pageContext.request.serverName}:${pageContext.request.serverPort}${path}/"/>

<html>
<head>
    <base href="${basePath}">
    <title>生成订单</title>
    <Link href="css/index.css" type="text/css" rel="stylesheet">
</head>
<body>
<h1>西蒙购物网</h1>
<hr>
<table width="100%">
    <tr>
        <td align="left">登陆用户：<span style="...">${username}</span></td>
        <td align="right"><a href="user/logout" target="_parent">注销</a></td>
    </tr>
</table>
<hr>
<h3>生成订单</h3>
<hr>
<form action="order/makeOrder" method="post">
    <table border="1">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" value="${username}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>联系电话：</td>
            <Td><input type="text" name="telephone"></Td>
        </tr>
        <tr>
            <td>总金额：</td>
            <td><input type="text" name="totalPrice" value="${totalPrice}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>发货地址：</td>
            <td><input type="text" name="deliveryAddress"></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
<hr>
<a href="category/showCategory">返回商品类别页面</a>
<hr>
</body>
</html>
