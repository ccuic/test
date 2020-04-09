<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

</head>
<body>
<script src="js/vue.min.js"></script>
<style>
    div.product{
        float:left;
        border:1px solid lightGray;
        width:200px;
        margin:10px;
        cursor: pointer;
    }
</style>
<div id="div1">
    <product name="MAXFEEL休闲男士手包真皮手拿包韩版潮" sale="10" ></product>
    <product name="宾度 男士手包真皮大容量手拿包牛皮信封包" sale="20" ></product>
    <product name="唯美诺新款小羊皮手拿包信封包软皮夹包潮" sale="30" ></product>
</div>
<script>
    Vue.component('product',{
        props:['name','sale'],
        template:'<div class="product" @click='increaseSale' >{{name}} 销量：{{sale}}</div>',
        methods:{
            increaseSale: function () {
this.sale++
            }
        }
    })
    new Vue({
        el: '#div1'
    })

</script>
</body>
</html>
