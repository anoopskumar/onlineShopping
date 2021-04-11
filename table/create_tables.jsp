<%-- 
    Document   : create_tables
    Created on : 9 Mar, 2021, 8:45:19 PM
    Author     : Anoop S Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %> 
         <%@page import="project.ConnectionProvider" %>
        <%  Connection con=ConnectionProvider.getConnection(); 
             Statement st=con.createStatement();
            String q1="CREATE TABLE user(name varchar(100),email varchar(100), PRIMARY KEY (email),mobilenumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100))";
             String q2="CREATE TABLE products(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
             String q3="CREATE TABLE cart(email varchar(100),product_id int,quantity int,price int,total int,adress varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
              String q4="CREATE TABLE message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
                
//           String q="CREATE TABLE employee_tabl(id int NOT NULL AUTO_INCREMENT,name varchar(45) NOT NULL,occupation varchar(35) NOT NULL,age int NOT NULL,PRIMARY KEY (id)";
//             st.execute(q1);
        //      st.execute(q2);
        st.execute(q4);
             System.out.print("Table created");
        %><tr><td align="center" >
                    <A HREF="welcome_to_database_query.jsp">
                <font size="5" color="blue">back to home page</font></A></td>
        </tr>	 </TABLE>
    </body>
</html>
