<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="project.ConnectionProvider" %>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");

try {
        Connection con=ConnectionProvider.getConnection();
        PreparedStatement ps=con.prepareStatement("update user set address=?,city=?,state=? where email=?");
        ps.setString(1, address);
        ps.setString(2, city);
        ps.setString(3, state);
        ps.setString(4, email);
        ps.executeUpdate();
        response.sendRedirect("addChangeAddress.jsp?msg=valid");
    } catch (Exception e) {
        System.out.println(e);
        response.sendRedirect("addChangeAddress.jsp?msg=invalid");
    }


%>