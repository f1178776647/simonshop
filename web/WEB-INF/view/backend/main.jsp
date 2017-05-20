<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
  <title>后台管理主面板</title>
  <base href="<%= basePath %>">
  </head>
  
  <body>
    <img src="images/mainBack.gif" width="100%" height="100%"/>
  </body>
</html>
