<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="project.ConnectionProvider" %>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="Delivered";
try {
         Connection con=ConnectionProvider.getConnection(); 
             Statement st=con.createStatement();
             st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and adress is not NULL");
             response.sendRedirect("ordersReceived.jsp?msg=delivered");
    } catch (Exception e) {
        System.out.println(e);
        response.sendRedirect("ordersReceived.jsp?msg=wrong");
    }
%>