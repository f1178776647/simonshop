<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +
            path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登录</title>
    <base href="<%= basePath %>">
    <script src="scripts/check.js" type="text/javascript"></script>
    <link href="css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>西蒙购物网</h1>
<hr>
<h3>用户登录</h3>
<hr>
<form id="frmLogin" action="user/login" method="post">
    <table class="tb" border="1">
        <tr>
            <td align="center">账号</td>
            <td><input id="username" type="text" name="username"/></td>
        </tr>
        <tr>
            <td align="center">密码</td>
            <td><input id="password" type="password" name="password"/></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="登录" onclick="return checkLoginForm();"/>
                <input type="reset" value="重置"/>
            </td>
        </tr>
    </table>
    <hr>
    <p>如果你不是本站用户， 单击<a href="user/toRegister">此处</a>注册。 </p>
</form>
<c:if test="${loginMsg!=null}">
    <script type="text/javascript">alert("${loginMsg}")</script>
    <c:remove var="loginMsg"/>
</c:if>
<c:if test="${registerMsg!=null}">
    <script type="text/javascript">alert("${registerMsg}")</script>
    <c:remove var="registerMsg"/>
</c:if>
</body>
</html>
