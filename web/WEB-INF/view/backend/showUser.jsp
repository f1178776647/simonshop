<%@page import="net.fz.shop.bean.User" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>显示用户信息</title>
    <base href="<%= basePath %>">
    <!-- 引入外部样式表 -->
    <link href="css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<hr>
<table width="100%">
    <tr>
        <td align="left">登录用户：<span style="color: red;"><%=session.getAttribute("username")%></span></td>
        <td align="right"><a href="user/logout" target="_parent">注销</a></td>
    </tr>
</table>
<hr>
<h3>用户列表</h3>
<hr>
<%
    // 获取用户列表
    List<User> users = (List<User>) session.getAttribute("users");
    //以表格形式来输出用户信息
    out.println("<table border='1' width='100%'>");
    out.println("<tr><th>编号</th><th>用户名</th><th>密码</th><th>电话</th><th>注册时间</th><th>权限</th></tr>");
    // 遍历商品类别列表
    for (int i = 0; i < users.size(); i++) {
        // 获取用户
        User User = users.get(i);
        // 根据权限值显示角色名
        String role = null;
        if (users.get(i).getPopedom() == 0) {
            role = "管理员";
        } else {
            role = "普通用户";
        }
        // 显示用户信息
        out.println("<tr align='center'>" + "<td>" + users.get(i).getId() + "</td>" + "<td>"
                + users.get(i).getUsername() + "</td>" + "<td>" + users.get(i).getPassword() + "</td>" + "<td>"
                + users.get(i).getTelephone() + "</td>" + "<td>" + users.get(i).getRegisterTime() + "</td>"
                + "<td>" + role + "</td>" + "</tr>");
    }
    out.println("</table>");
%>
<hr>
</body>
</html>