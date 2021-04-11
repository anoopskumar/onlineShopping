<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="project.ConnectionProvider" %>
   
<%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String mobileNumber=request.getParameter("mobilenumber");
    String securityQuestion=request.getParameter("securityQuestion");
    String anwser=request.getParameter("anwser");
    String password=request.getParameter("password");
    String address="";
    String city="";
    String state="";
//    String country="";
    try {
            Connection con=ConnectionProvider.getConnection(); 
            PreparedStatement ps=con.prepareStatement("INSERT INTO user VALUES(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, mobileNumber);
            ps.setString(4, securityQuestion);
            ps.setString(5, anwser);
            ps.setString(6, password);
            ps.setString(7, address);
            ps.setString(8, city);
            ps.setString(9, state);
           
            ps.executeUpdate();
            response.sendRedirect("index.jsp?msg=valid");
        } catch (Exception e) {
            System.out.println(e);
            response.sendRedirect("index.jsp?msg=invalid");
            
        }


%>
         
