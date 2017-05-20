<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理左面板</title>
    <base href="<%= basePath %>">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/leftPane.css">
    <script type="text/javascript">
        function show(id) {
            var obj = document.getElementById('c_' + id);
            if (obj.style.display == 'block') {
                obj.style.display = 'none';
            } else {
                obj.style.display = 'block';
            }
        }
    </script>
</head>

<body>
<table cellSpacing=0 cellPadding=0 width='100%' border=0>
    <tbody>
    <tr>
        <td class=catemenu>&nbsp;<A
                style='CURSOR: pointer' onclick=show(1)><img src="images/folder.png">用户管理</A>
        </td>
    </tr>
    <tbody id=c_1>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a
                href="user/showUser" target="main_frame">查看用户</a></td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png">
            <a href="todo" target="main_frame">添加用户</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png">
            <a href="todo" target="main_frame">更新用户</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png">
            <a href="todo" target="main_frame">删除用户</a>
        </td>
    </tr>
    </tbody>

    <tbody>
    <tr>
        <td class=catemenu>&nbsp;<A
                style='CURSOR: pointer' onclick=show(2)><img src="images/folder.png">
            类别管理</A></td>
    </tr>
    <tbody id=c_2 style='DISPLAY: none'>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">查看类别</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">添加类别</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">更新类别</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">删除类别</a>
        </td>
    </tr>
    </tbody>

    <tbody>
    <tr>
        <td class=catemenu>&nbsp;<A
                style='CURSOR: pointer' onclick=show(3)><img src="images/folder.png">
            商品管理</A></td>
    </tr>
    <tbody id=c_3 style='DISPLAY: none'>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">查看商品</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">添加商品</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">更新商品</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">删除商品</a>
        </td>
    </tr>
    </tbody>

    <tbody>
    <tr>
        <td class=catemenu>&nbsp;<A
                style='CURSOR: pointer' onclick=show(4)><img src="images/folder.png">
            订单管理</A></td>
    </tr>
    <tbody id=c_4 style='DISPLAY: none'>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">查看订单</a>
        </td>
    </tr>
    <tr>
        <td class=bar2 height=20>&nbsp;&nbsp;<img src="images/file.png"> <a href="todo" target="main_frame">删除订单</a>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
