<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String fname = request.getParameter("fname");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    
      
    try{
        
    String query1 = "select * from faculty ";
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery(query1);  
    int i = 0;
    while(rs1.next()){
        
    i++;    
    }
    System.out.println("total:"+i);
    
    if(i<=9){
     
    
    PreparedStatement ps=connection.prepareStatement("insert into faculty(facname,email,address,mobile) values(?,?,?,?)");

    ps.setString(1,fname);
    ps.setString(2,email);
    ps.setString(3,address);
    ps.setString(4,mobile);
       
    int j=ps.executeUpdate();
    if(j>0)
    {
    response.sendRedirect("./addfaculty.jsp?msg=Success");
    }
    else{
    response.sendRedirect("./addfaculty.jsp?m1=Failed");    
    }
    }
    
    else{
    response.sendRedirect("./addfaculty.jsp?m2=Failed");    
    }
    
    }
    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>