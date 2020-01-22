<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" isELIgnored="false" %>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String password = request.getParameter("password");
%>
您提交的账号：<%=name%><br/>
您提交的密码是：<%=password%>
<br/>
<a href="javascript:history.back()">返回</a>