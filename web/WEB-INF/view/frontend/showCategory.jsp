<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--设置JSP核心标签库，可使用标签和EL（表达式语言）-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="basePath" value="${pageContext.request.scheme}://
${pageContext.request.serverName}:${pageContext.request.serverPort}${path}/"/>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>显示商品类别</title>
    <!--设置网页基路径-->
    <base href="${basePath}">
    <!--引入外部样式表-->
    <link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>西蒙购物网</h1>
<hr>
<table width="100%">
    <tr>
        <td align="left">登录用户：<span style="color: red">${username}</span></td>
        <td align="right"><a href="user/logout" target="_parent">注销</a></td>
    </tr>
</table>
<table border="1">
    <tr>
        <th>类别编号</th>
        <th>商品类别</th>
    </tr>
    <%--遍历商品类别列表--%>
    <c:forEach var="category" items="${categories}">
        <tr>
            <td align="center">
                    ${category.id}
            </td>
            <td width="150px" align="center">
                <a href="product/showProduct?categoryId=${category.id}">
                        ${category.name}</a>
            </td>
        </tr>
    </c:forEach>


</table>
<c:if test="${orderMsg!=null}">
    <script type="text/javascript">
        alert("${orderMsg}");
    </script>
    <c:remove var="order"/>
</c:if>
</body>
</html>
