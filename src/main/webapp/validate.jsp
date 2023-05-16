<%-- 
    Document   : validate
    Created on : 16-05-2023, 1:31:30
    Author     : landr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import ="java.sql.SQLException" %>
<% 
 try {
 String usuario = request.getParameter("usuario");
 String password = request.getParameter("password");
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //MySQL conexion database
// Connection conn= DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Bciisa;","rodrigo","12345)");
 Connection conn= DriverManager.getConnection("jdbc:sqlserver://localhost:3306/javademo?" + "user=root&password=");
 
    PreparedStatement pst = conn.prepareStatement("Select usuario, password from Login where usuario=? and password=?");
    pst.setString(1, usuario);
    pst.setString(2, password);
    ResultSet rs = pst.executeQuery();
    if(rs.next())
    out.println("Valida credenciales");
    else
    out.println("credenciales invalidas");
    }
    catch(Exception e){
    out.println(e);
    out.println("Algo esta mal, intente denuevo");
    
    }
    %>
    
    
    
    
    
    
    
    
    
    
    
    
    }
    
%>