<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    out.println("the username is " + username);
    out.println("the password is " + password);
    try{
        
    String query = "select * from customer where username = '"+username+"' ";
    Statement st3 = connection.createStatement();
    ResultSet rs3 = st3.executeQuery(query);

    if (rs3.next()) {
    String user = rs3.getString("username");
    String pass = rs3.getString("password");

    if (username.equals(user) && password.equals(pass)) {
        response.sendRedirect("./adminhome.jsp?msg=success");
    } else {
        response.sendRedirect("./admin.jsp?msg=Failed");
    }
} else {
    // Handle the case when no matching user is found
    response.sendRedirect("./admin.jsp?msg=UserNotFound");
}
}
   catch(Exception e)
   {
    out.println(e);
   }

    %>

   