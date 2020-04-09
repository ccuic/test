<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

</head>
<body>
<script src="js/vue.min.js"></script>
<div id="div1">
    {{gareen.name}}
</div>
<div id="div2">
    {{gareen.hp}}
</div>
<script>
    var gareen={"name":"Jack2","hp":634};
    new Vue(
        {
            el:"#div1",
            data:{message:gareen}
        }
    );
    new Vue(
        {
            el:"#div2",
            data:{message:gareen}
        }
    );
</script>
</body>

</html>
