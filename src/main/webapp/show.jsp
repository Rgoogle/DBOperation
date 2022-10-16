<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%!String url="jdbc:mysql://localhost:3306/myinfo?allowPublicKeyRetrieval=true&useSSL=false";
    String user="root";
    String pw="root";
%>
<% Class.forName("com.mysql.jdbc.Driver");
    Connection connection= DriverManager.getConnection(url,user,pw);
    PreparedStatement preparedStament=connection.prepareStatement("SELECT * FROM info");
    ResultSet resultSet= preparedStament.executeQuery();
    out.println("数据库内容:<br>");
    while(resultSet.next()){
        String id = resultSet.getString(1);
        String name = resultSet.getString(2);
        String phone = resultSet.getString(3);
        String sex = resultSet.getString(4);
        String height = resultSet.getString(5);
        String wight = resultSet.getString(6);
        out.println("Id:"+id+"&nbsp&nbsp姓名:"+name+"&nbsp&nbsp电话号码:"+phone+"&nbsp&nbsp性别:"+sex+"&nbsp&nbsp身高:"+height+"&nbsp&nbsp体重:"+wight+"<br>");
        }
%>
</body>
</html>
