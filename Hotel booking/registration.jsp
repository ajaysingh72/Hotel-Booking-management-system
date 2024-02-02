
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<%

String n=request.getParameter("name");
String un = request.getParameter("uname");
String e=request.getParameter("email");
String nm=request.getParameter("number");
String p=request.getParameter("pass");
String cp = request.getParameter("cpass");
String g=request.getParameter("gender");


Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root", "root");

Statement st = con.createStatement();


if (!p.equals(cp)) {
   RequestDispatcher req=request.getRequestDispatcher("registration.html");
   req.include(request,response);
  }
else{
int val = st.executeUpdate("insert into users (name, uname, email , phone, pass, gender )values('"+n+"','"+un+"','"+e+"','"+nm+"', '"+p+"', '"+g+"')");
con.close();
if(val<1){
    RequestDispatcher req = request.getRequestDispatcher("registration.html");
    req.include(request, response); 
}
else{
    RequestDispatcher req = request.getRequestDispatcher("login.html");
			req.include(request, response); 
}
}
    
    %>