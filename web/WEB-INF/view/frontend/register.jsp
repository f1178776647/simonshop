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
    <script type="text/javascript" src="script/check.js"></script>
    <base href="<%= basePath %>">
    <link href="css/index.css" rel="stylesheet" type="text/css"/>
    <title>用户注册</title>
</head>
<body>
<h1>西蒙购物网</h1>
<hr>
<h3>用户注册</h3>
<hr>
<form action="user/register" method="post" onsubmit="checkRegisterForm();">
    <table border="1">
        <tr>
            <td>账号</td>
            <td><input id="username" type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input id="password" type="password" name="password"/></td>
        </tr>
        <tr>
            <td align="center">电话</td>
            <td><input id="telephone" type="text" name="telephone"/></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="注册" onclick="checkForm();"/>
                <input type="reset" value="重置"/>
            </td>
        </tr>
    </table>
</form>
<hr>
<a href="user/toLogin">切换到登陆页面</a>
<hr>
<c:if test="${registerMsg!=null}">
    <script TYPE="text/javascript">alert("${registerMsg}")</script>
    <c:remove var="registerMsg"/>
</c:if>
</body>
</html>