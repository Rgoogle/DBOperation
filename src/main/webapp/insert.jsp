<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>sucess</title>
</head>
<body>
<%!String url="jdbc:mysql://localhost:3306/myinfo?allowPublicKeyRetrieval=true&useSSL=false";
    String user="root";
    String pw="root";%>
<%String name=request.getParameter("name");
    String phone=request.getParameter("phone");
    String sex=request.getParameter("sex");
    String height=request.getParameter("height");
    String wight=request.getParameter("weight");%>
<%Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(url,user,pw);
    PreparedStatement preparedStatement= connection.prepareStatement("INSERT INTO info (name, phone, sex, height,weight) VALUES (?, ?, ?, ?,?)");
    preparedStatement.setObject(1,name);
    preparedStatement.setObject(2,phone);
    preparedStatement.setObject(3,sex);
    preparedStatement.setObject(4,height);
    preparedStatement.setObject(5,wight);
    preparedStatement.executeUpdate();
    out.println("<p>提交成功</p>");
    %>
</body>
</html>
