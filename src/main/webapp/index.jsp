<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%
        String param = (String)request.getAttribute("result");
    %>
    <base href="<%=basePath%>">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<h2>Input Key:</h2>
<form method="post" action="SQLyuju" >
    <input name="request_id" type="text" size="15" style="width:400px; height:30px;"/>

    <button type="submit" style="width:100px; height:30px;" >submit</button>
</form>
<br>
<label>生成的SQL语句</label>
<br>
<h3><%=param%></h3>

</body>
</html>
