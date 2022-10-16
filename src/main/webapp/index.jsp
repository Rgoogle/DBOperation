<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<p>数据库插入:</p>
<form action="./insert.jsp" method="post">
    <label>name&nbsp&nbsp:</label><input type="text" name="name"/><br>
    <label>phone&nbsp:</label><input type="text" name="phone"/><br>
    <input type="radio" checked="checked" value="1" name="sex" />男<input value="0" type="radio"  name="sex"/>女<br>
    <label>height&nbsp:</label><input type="text" name="height"/>单位 :cm<br>
    <label>weight:</label><input type="text" name="weight"/>单位 : kg<br>

    <input type="submit"/>
</form>
<button id="query">查询数据库内容</button>
<script>
    var Qbutton=document.getElementById("query");
    Qbutton.onclick=()=>{
        window.location.href="http://localhost:8080/DBOperation_war/show.jsp";
    }
</script>
</body>
</html>
