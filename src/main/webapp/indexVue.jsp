<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
</head>
<body>
<span>输入账号：</span>
<input id="name2" name="name2" onkeyup="check()" type="text">
<span id="checkResult"></span>
<br>
<script >
    var xmlhttp =new XMLHttpRequest();
    document.write(xmlhttp);
    var xmlhttp;
    function check()
    {
        var name=document.getElementById("name2").value;
        var url="beifen/checkName.jsp?name="+name;
        xmlhttp =new XMLHttpRequest();
        xmlhttp.onreadystatechange=checkResult;
        xmlhttp.open("GET",url,true);
        xmlhttp.send(null);
    }

    function checkResult() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById('checkResult').innerHTML=xmlhttp.responseText;
        }
    }
</script>
<form action="https://how2j.cn/study/checkName.jsp">

    输入账号 <input name="name" type="text" value="abc">

    <input type="submit" value="验证账号是否存在">

</form><br>
<a href="https://how2j.cn/study/checkName.jsp?name=abc">checkName.jsp?name=abc</a>
<br>
<a href="https://how2j.cn/study/checkName.jsp?name=def">checkName.jsp?name=def</a>
<br>
<script src="jquery.min.js"></script>
<form id="form" action="https://how2j.cn/study/login.jsp">
    账号 : <input name="name" type=""> <br>
    密码: <input name="password" type=""><br>
    <input type="submit" value="登陆">

</form>
<script>
    $(function(){

        $("#form").submit(function(){
            alert("提交账号密码");
        });
    });

</script>

<div id="message1"></div>
<div id="message2"></div>

<img id="img" src="picture/xiao.jpg">
</body>

</html>
