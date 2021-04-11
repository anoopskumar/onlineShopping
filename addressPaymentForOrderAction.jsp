<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="project.ConnectionProvider" %>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String mobileNumber=request.getParameter("mobileNumber");
String paymentMethod=request.getParameter("paymentMethod");
String tranactionId="";
tranactionId=request.getParameter("transactionId");
String status="bill";

try {
        Connection con=ConnectionProvider.getConnection(); 
        PreparedStatement ps=con.prepareStatement("update user set address=?,city=?,state=?,mobilenumber=? where email=?");
        ps.setString(1,address);
        ps.setString(2,city);
        ps.setString(3,state);
        ps.setString(4,mobileNumber);
        ps.setString(5,email);
        ps.executeUpdate();
        
        PreparedStatement ps1=con.prepareStatement("update cart set adress=?,city=?,state=?,mobileNumber=?,orderDate=now(),deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY),paymentMethod=?,transactionId=?,status=? where email=? and adress is NULL");
        ps1.setString(1,address);
        ps1.setString(2,city);
        ps1.setString(3,state);
        ps1.setString(4,mobileNumber);
        ps1.setString(5,paymentMethod);
        ps1.setString(6,tranactionId);
        ps1.setString(7,status);
        ps1.setString(8,email);
        ps1.executeUpdate();
        response.sendRedirect("bill.jsp");
    } catch (Exception e) {
        System.out.println(e);
    }
%>