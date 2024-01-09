<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String yr = request.getParameter("year");
    int year = Integer.parseInt(yr);
    String fname = request.getParameter("fname");
    String subject = request.getParameter("subject"); 
    
     
    try{
        
    if(year==1){    
     
    PreparedStatement ps=connection.prepareStatement("insert into first(yr,fname,subject) values(?,?,?)");

    ps.setString(1,yr);
    ps.setString(2,fname);
    ps.setString(3,subject);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("./addsubject.jsp?msg=Success");
    }
    else{
    response.sendRedirect("./addsubject.jsp?m1=Failed");    
    }
    }
    
    if(year==2){    
     
    PreparedStatement ps=connection.prepareStatement("insert into second(yr,fname,subject) values(?,?,?)");

    ps.setString(1,yr);
    ps.setString(2,fname);
    ps.setString(3,subject);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("./addsubject.jsp?msg=Success");
    }
    else{
    response.sendRedirect("./addsubject.jsp?m1=Failed");    
    }
    }
    
    if(year==3){    
     
    PreparedStatement ps=connection.prepareStatement("insert into third(yr,fname,subject) values(?,?,?)");

    ps.setString(1,yr);
    ps.setString(2,fname);
    ps.setString(3,subject);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("./addsubject.jsp?msg=Success");
    }
    else{
    response.sendRedirect("./addsubject.jsp?m1=Failed");    
    }
    }
    
    if(year==4){    
     
    PreparedStatement ps=connection.prepareStatement("insert into fourth(yr,fname,subject) values(?,?,?)");

    ps.setString(1,yr);
    ps.setString(2,fname);
    ps.setString(3,subject);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("./addsubject.jsp?msg=Success");
    }
    else{
    response.sendRedirect("./addsubject.jsp?m1=Failed");    
    }
    }
    
    
    
    
    %>
    
    <%
    }
    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>