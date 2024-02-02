
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
 String u=request.getParameter("email");
 String p=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root", "");
 Statement st = con.createStatement();


 ResultSet rs= st.executeQuery("select * from users where email='"+u+"'");

if(rs.next())
{
if(rs.getString(5).equals(p)){
                         RequestDispatcher req = request.getRequestDispatcher("indexx.html");
                         req.include(request, response);
 }
}
 else{
                         RequestDispatcher req = request.getRequestDispatcher("login.html");
			req.include(request, response);               
 }


 %>