<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="net.fz.shop.bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="basePath" value="${pageContext.request.scheme}://
${pageContext.request.serverName}:${pageContext.request.serverPort}${path}/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!--设置网页基路径-->
    <base href="${basePath}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>显示商品</title>
    <!-- 引入外部样式表 -->
    <link rel="stylesheet" type="text/css" href="css/index.css">

</head>
<body>
<h1>西门购物网</h1>
<table width="100%">
    <tr>
        <td align="left">登录用户：<span style="color: red">${username}</span></td>
        <td align="right"><a href="user/logout" target="_parent">注销</a></td>
    </tr>
</table>
</font>商品类别
<hr>
欢迎选购【<span>${categoryName}</span>】类商品
<hr>
<table border="1">
    <%--<c:forEach begin="0" end="${fn:length(products)}">
        <c:if test="">--%>
    <tr>
        <c:set var="count" value="0"/>
        <c:forEach var="product" items="${products}" varStatus="productNum">

        <c:if test="${productNum.index % 4==0}">

    <tr>
        </c:if>
        <td>
            <table border="0">
                <tr>
                    <td colspan="2">
                        <img width="100" height="100" src="images/product${product.id}.jpg">
                    </td>
                </tr>
                <tr>
                    <td><p>商品编号：</p></td>
                    <td>${product.id}</td>
                </tr>
                <tr>
                    <td><p>商品名称：</p></td>
                    <td>${product.name}</td>
                </tr>
                <tr>
                    <td><p>销售价格：</p></td>
                    <td>${product.price}</td>
                </tr>
                <tr>
                    <td><p>上架时间：</p></td>
                    <td><fmt:formatDate value="${product.addTime}"
                                        pattern="yyyy-MM-dd"/></td>
                </tr>
                <tr>
                    <td><p>用户操作：</p></td>
                    <td><a href="product/operateCart?id=${product.id}&operate=add">加入购物车</a></td>
                </tr>
            </table>
        </td>

        </c:forEach>
    </tr>

</table>
<hr>
<a href="category/showCategory">返回商品类别页面</a>
<hr>
<jsp:include page="showCart.jsp"/>
</body>
</html>