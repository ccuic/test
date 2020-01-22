<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <script>
        function print(s) {
            document.write(s);
            document.write("<br>");
        }
       function get() {
           var x = new Number(123);
           document.write('数字对新类型'+typeof  x);
       }
    </script>
</head>
<body>

<input type="text" id="num1" value="1">
<br>
<input type="text" id="result" value="">
<br>
<input type="button" value="取值" onclick="get()">
</body>

</html>
