<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="project.ConnectionProvider" %>
<%
String email=session.getAttribute("email").toString();
String product_id=request.getParameter("id");
try {
    
         Connection con=ConnectionProvider.getConnection(); 
             Statement st=con.createStatement();
             st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and adress is NULL");
             response.sendRedirect("myCart.jsp?msg=removed");
        
    } catch (Exception e) {System.out.println(e);
    }
%>
