<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <title>西蒙购物网站后台管理</title>
    <base href="<%= basePath %>">
</head>
<frameset rows="30%,70%" cols="*">
    <frame src="toTop" name="top_frame" scrolling="no">
    <frameset rows="*" cols="25%,75%">
        <frame src="toLeft" name="left_frame" scrolling="yes">
        <frame src="toMain" name="main_frame" scrolling="yes">
    </frameset>
</frameset>
</html>