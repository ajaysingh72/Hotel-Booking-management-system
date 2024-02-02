<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String email=request.getParameter("email");
try{
String connurl = "jdbc:mysql://localhost:3306/user";
Connection con=null;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root", "sINGH@123");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
if(rs.next()){ %>
    <h1>Your prvious password </h1>
    <h3><%=rs.getString(5)%></h3>
<%
}
else{
    out.println("Invalid email");
}
}
catch(Exception e){
    out.println(e);
}
%>
