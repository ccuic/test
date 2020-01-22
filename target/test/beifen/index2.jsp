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
    <script>
        function yanzheng() {
            var name = document.getElementById("username").value;
            if(name.length<3) {
                document.getElementById("username_tishiId").textContent="用户名不得小于3个字符";
            }
        }
    </script>
</head>
<form action="http://localhost:8080/test/study/login.jsp" method="post">
    <table width="400px">
        <tr>
            <td width="30px" ><th align="right"><font color=red>*</font>用户名：</th></td>
            <td><input type="text" name="name" id="username" required="true"/></td>
            <td><label name="username_tishiName" id="username_tishiId"></label></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>密码：</th></td>
            <td><input type="text" name="name" required="true"/></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>确认密码：</th></td>
            <td><input type="text" name="name" required="true"/></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>Email：</th></td>
            <td><input type="text" name="name" required="true"/></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>真实姓名：</th></td>
            <td><input type="text" name="name" required="true"/></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>性别：</th></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>生日：</th></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>手机：</th></td>
            <td><input type="text" name="name" required="true"/></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>居住地：</th></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td width="30px" align="right"><th align="right"><font color=red>*</font>QQ：</th></td>
            <td><input type="text" name="name" required="true"/><br/>
            <font color=#00bfff size="3">设置我的qq在线状态</font>
            </td>
            <td></td>
        </tr>
    </table>
    <input type="submit" Onclick="yanzheng()"  value="提交">
</form>
</body>
</html>
