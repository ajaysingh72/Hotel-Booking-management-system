<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<%

String n=request.getParameter("name");
String un = request.getParameter("uname");
String e=request.getParameter("email");
String nm=request.getParameter("number");
String p=request.getParameter("pass");
String g=request.getParameter("gender");



Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root", "sINGH@123");

Statement st = con.createStatement();

int val = st.executeUpdate("insert into users (name, uname, email , phone, pass, gender )values('"+n+"','"+un+"','"+e+"','"+nm+"', '"+p+"', '"+g+"')");
con.close();
if(val<1){
out.println("unable to registor");
}
else{
    out.println("successfully insert data into database!");
}
    
    %>