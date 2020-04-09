<%--
  Created by IntelliJ IDEA.
  User: cuixiaoming01
  Date: 2020/4/9
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String name = request.getParameter("name");

    if("abc".equals(name))
        out.print("<font color='red'>已经存在2</font>");
    else
        out.print("<font color='green'>可以使用2</font>");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
