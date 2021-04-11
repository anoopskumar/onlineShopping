<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="project.ConnectionProvider" %>
<%
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("anwser");
String newPassword=request.getParameter("newPassword");

int check=0;
try {
        Connection con=ConnectionProvider.getConnection(); 
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("SELECT answer='"+answer+"',mobilenumber='"+mobileNumber+"'  FROM user WHERE email='"+email+"';");
             while(rs.next()){
             check=1;
             st.executeUpdate("update user set password='"+newPassword+"' where email='"+email+"'");
             
             response.sendRedirect("forgotPassword.jsp?msg=done");
             
             }
             if(check==0){
             
             response.sendRedirect("forgotPassword.jsp?msg=invalid");
             }
    } catch (Exception e) {
        
        System.out.println(e);
    }







%>
