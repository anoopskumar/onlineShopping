
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="project.ConnectionProvider" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try {
         Connection con=ConnectionProvider.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from user where email='"+email+"'"); 
        while(rs.next()){
    
%>
<h3>Name:<%=rs.getString(1) %> </h3>
<hr>
 <h3>Email:<%=rs.getString(2) %>  </h3>
 <hr>
 <h3>Mobile Number:<%=rs.getString(3) %>  </h3>
 <hr>
<h3>Security Question:<%=rs.getString(4) %>  </h3>
<hr>
      <br>
      <br>
      <br>
<%
    }
} catch(Exception e){
System.out.println(e);
}
%>
</body>
</html>