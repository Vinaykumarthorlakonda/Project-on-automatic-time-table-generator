<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String yr = request.getParameter("year");
    int year = Integer.parseInt(yr);
    
      
    try{
    
    String stringArray[];    
    stringArray = new String[6];
    
    String stringArray1[];    
    stringArray1 = new String[6];
    
    String stringArray2[];    
    stringArray2 = new String[6];
    
    String stringArray3[];    
    stringArray3 = new String[6];
    
    String stringArray4[];    
    stringArray4 = new String[6];
    
    String stringArray5[];    
    stringArray5 = new String[6];
    
    int i =0;
    
    if(year==1){    
    String query = "select * from first ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(query);  
    
    while(rs.next()){
    stringArray[i] = rs.getString("subject");
    i++;
    }
    
    PreparedStatement ps=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps.setString(1,"1st");
    ps.setString(2,stringArray[0]);
    ps.setString(3,stringArray[1]);
    ps.setString(4,stringArray[2]);
    ps.setString(5,stringArray[3]);
    ps.setString(6,stringArray[4]);
    ps.setString(7,stringArray[5]);
    ps.setString(8,yr);
    ps.executeUpdate();
    
    
    PreparedStatement ps1=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps1.setString(1,"2nd");
    ps1.setString(2,stringArray[1]);
    ps1.setString(3,stringArray[2]);
    ps1.setString(4,stringArray[3]);
    ps1.setString(5,stringArray[4]);
    ps1.setString(6,stringArray[5]);
    ps1.setString(7,stringArray[0]);
    ps1.setString(8,yr);
    ps1.executeUpdate();
    
    
    PreparedStatement ps2=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps2.setString(1,"3rd");
    ps2.setString(2,stringArray[2]);
    ps2.setString(3,stringArray[3]);
    ps2.setString(4,stringArray[4]);
    ps2.setString(5,stringArray[5]);
    ps2.setString(6,stringArray[0]);
    ps2.setString(7,stringArray[1]);
    ps2.setString(8,yr);
    ps2.executeUpdate();
    
    
    PreparedStatement ps3=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps3.setString(1,"4th");
    ps3.setString(2,stringArray[3]);
    ps3.setString(3,stringArray[4]);
    ps3.setString(4,stringArray[5]);
    ps3.setString(5,stringArray[0]);
    ps3.setString(6,stringArray[1]);
    ps3.setString(7,stringArray[2]);
    ps3.setString(8,yr);
    ps3.executeUpdate();
    
    
    PreparedStatement ps4=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps4.setString(1,"5th");
    ps4.setString(2,stringArray[4]);
    ps4.setString(3,stringArray[5]);
    ps4.setString(4,stringArray[0]);
    ps4.setString(5,stringArray[1]);
    ps4.setString(6,stringArray[2]);
    ps4.setString(7,stringArray[3]);
    ps4.setString(8,yr);
    ps4.executeUpdate();
    
    PreparedStatement ps5=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps5.setString(1,"6th");
    ps5.setString(2,stringArray[5]);
    ps5.setString(3,stringArray[0]);
    ps5.setString(4,stringArray[1]);
    ps5.setString(5,stringArray[2]);
    ps5.setString(6,stringArray[3]);
    ps5.setString(7,stringArray[4]);
    ps5.setString(8,yr);
    ps5.executeUpdate();
    
    PreparedStatement ps6=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps6.setString(1,"7th");
    ps6.setString(2,stringArray[0]);
    ps6.setString(3,stringArray[1]);
    ps6.setString(4,stringArray[2]);
    ps6.setString(5,stringArray[3]);
    ps6.setString(6,stringArray[4]);
    ps6.setString(7,stringArray[5]);
    ps6.setString(8,yr);
    ps6.executeUpdate();
        
    response.sendRedirect("./generate.jsp?msg=Success");
        
    }
    if(year==2){    
    String query = "select * from second";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(query);  
    
    while(rs.next()){
    stringArray[i] = rs.getString("subject");
    i++;
    }
    
    PreparedStatement ps=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps.setString(1,"1st");
    ps.setString(2,stringArray[1]);
    ps.setString(3,stringArray[2]);
    ps.setString(4,stringArray[3]);
    ps.setString(5,stringArray[4]);
    ps.setString(6,stringArray[5]);
    ps.setString(7,stringArray[0]);
    ps.setString(8,yr);
    ps.executeUpdate();
    
    
    PreparedStatement ps1=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps1.setString(1,"2nd");
    ps1.setString(2,stringArray[2]);
    ps1.setString(3,stringArray[3]);
    ps1.setString(4,stringArray[4]);
    ps1.setString(5,stringArray[5]);
    ps1.setString(6,stringArray[0]);
    ps1.setString(7,stringArray[1]);
    ps1.setString(8,yr);
    ps1.executeUpdate();
    
    
    PreparedStatement ps2=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps2.setString(1,"3rd");
    ps2.setString(2,stringArray[3]);
    ps2.setString(3,stringArray[4]);
    ps2.setString(4,stringArray[5]);
    ps2.setString(5,stringArray[0]);
    ps2.setString(6,stringArray[1]);
    ps2.setString(7,stringArray[2]);
    ps2.setString(8,yr);
    ps2.executeUpdate();
    
    
    PreparedStatement ps3=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps3.setString(1,"4th");
    ps3.setString(2,stringArray[4]);
    ps3.setString(3,stringArray[5]);
    ps3.setString(4,stringArray[0]);
    ps3.setString(5,stringArray[1]);
    ps3.setString(6,stringArray[2]);
    ps3.setString(7,stringArray[3]);
    ps3.setString(8,yr);
    ps3.executeUpdate();
    
    
    PreparedStatement ps4=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps4.setString(1,"5th");
    ps4.setString(2,stringArray[5]);
    ps4.setString(3,stringArray[0]);
    ps4.setString(4,stringArray[1]);
    ps4.setString(5,stringArray[2]);
    ps4.setString(6,stringArray[3]);
    ps4.setString(7,stringArray[4]);
    ps4.setString(8,yr);
    ps4.executeUpdate();
    
    PreparedStatement ps5=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps5.setString(1,"6th");
    ps5.setString(2,stringArray[0]);
    ps5.setString(3,stringArray[1]);
    ps5.setString(4,stringArray[2]);
    ps5.setString(5,stringArray[3]);
    ps5.setString(6,stringArray[4]);
    ps5.setString(7,stringArray[5]);
    ps5.setString(8,yr);
    ps5.executeUpdate();
    
    PreparedStatement ps6=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps6.setString(1,"7th");
    ps6.setString(2,stringArray[1]);
    ps6.setString(3,stringArray[2]);
    ps6.setString(4,stringArray[3]);
    ps6.setString(5,stringArray[4]);
    ps6.setString(6,stringArray[5]);
    ps6.setString(7,stringArray[0]);
    ps6.setString(8,yr);
    ps6.executeUpdate();
        
    response.sendRedirect("./generate.jsp?msg=Success");
        
    }
    
    if(year==3){    
    String query = "select * from third ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(query);  
    
    while(rs.next()){
    stringArray[i] = rs.getString("subject");
    i++;
    }
    
    PreparedStatement ps=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps.setString(1,"1st");
    ps.setString(2,stringArray[2]);
    ps.setString(3,stringArray[3]);
    ps.setString(4,stringArray[4]);
    ps.setString(5,stringArray[5]);
    ps.setString(6,stringArray[0]);
    ps.setString(7,stringArray[1]);
    ps.setString(8,yr);
    ps.executeUpdate();
    
    
    PreparedStatement ps1=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps1.setString(1,"2nd");
    ps1.setString(2,stringArray[3]);
    ps1.setString(3,stringArray[4]);
    ps1.setString(4,stringArray[5]);
    ps1.setString(5,stringArray[0]);
    ps1.setString(6,stringArray[1]);
    ps1.setString(7,stringArray[2]);
    ps1.setString(8,yr);
    ps1.executeUpdate();
    
    
    PreparedStatement ps2=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps2.setString(1,"3rd");
    ps2.setString(2,stringArray[4]);
    ps2.setString(3,stringArray[5]);
    ps2.setString(4,stringArray[0]);
    ps2.setString(5,stringArray[1]);
    ps2.setString(6,stringArray[2]);
    ps2.setString(7,stringArray[3]);
    ps2.setString(8,yr);
    ps2.executeUpdate();
    
    
    PreparedStatement ps3=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps3.setString(1,"4th");
    ps3.setString(2,stringArray[5]);
    ps3.setString(3,stringArray[0]);
    ps3.setString(4,stringArray[1]);
    ps3.setString(5,stringArray[2]);
    ps3.setString(6,stringArray[3]);
    ps3.setString(7,stringArray[4]);
    ps3.setString(8,yr);
    ps3.executeUpdate();
    
    
    PreparedStatement ps4=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps4.setString(1,"5th");
    ps4.setString(2,stringArray[0]);
    ps4.setString(3,stringArray[1]);
    ps4.setString(4,stringArray[2]);
    ps4.setString(5,stringArray[3]);
    ps4.setString(6,stringArray[4]);
    ps4.setString(7,stringArray[5]);
    ps4.setString(8,yr);
    ps4.executeUpdate();
    
    PreparedStatement ps5=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps5.setString(1,"6th");
    ps5.setString(2,stringArray[1]);
    ps5.setString(3,stringArray[2]);
    ps5.setString(4,stringArray[3]);
    ps5.setString(5,stringArray[4]);
    ps5.setString(6,stringArray[5]);
    ps5.setString(7,stringArray[0]);
    ps5.setString(8,yr);
    ps5.executeUpdate();
    
    PreparedStatement ps6=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps6.setString(1,"7th");
    ps6.setString(2,stringArray[2]);
    ps6.setString(3,stringArray[3]);
    ps6.setString(4,stringArray[4]);
    ps6.setString(5,stringArray[5]);
    ps6.setString(6,stringArray[0]);
    ps6.setString(7,stringArray[1]);
    ps6.setString(8,yr);
    ps6.executeUpdate();
        
    response.sendRedirect("./generate.jsp?msg=Success");
        
    }
    
    if(year==4){    
    String query = "select * from fourth ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(query);  
    
    while(rs.next()){
    stringArray[i] = rs.getString("subject");
    i++;
    }
    
    PreparedStatement ps=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps.setString(1,"1st");
    ps.setString(2,stringArray[3]);
    ps.setString(3,stringArray[4]);
    ps.setString(4,stringArray[5]);
    ps.setString(5,stringArray[0]);
    ps.setString(6,stringArray[1]);
    ps.setString(7,stringArray[2]);
    ps.setString(8,yr);
    ps.executeUpdate();
    
    
    PreparedStatement ps1=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps1.setString(1,"2nd");
    ps1.setString(2,stringArray[4]);
    ps1.setString(3,stringArray[5]);
    ps1.setString(4,stringArray[0]);
    ps1.setString(5,stringArray[1]);
    ps1.setString(6,stringArray[2]);
    ps1.setString(7,stringArray[3]);
    ps1.setString(8,yr);
    ps1.executeUpdate();
    
    
    PreparedStatement ps2=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps2.setString(1,"3rd");
    ps2.setString(2,stringArray[5]);
    ps2.setString(3,stringArray[0]);
    ps2.setString(4,stringArray[1]);
    ps2.setString(5,stringArray[2]);
    ps2.setString(6,stringArray[3]);
    ps2.setString(7,stringArray[4]);
    ps2.setString(8,yr);
    ps2.executeUpdate();
    
    
    PreparedStatement ps3=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps3.setString(1,"4th");
    ps3.setString(2,stringArray[0]);
    ps3.setString(3,stringArray[1]);
    ps3.setString(4,stringArray[2]);
    ps3.setString(5,stringArray[3]);
    ps3.setString(6,stringArray[4]);
    ps3.setString(7,stringArray[5]);
    ps3.setString(8,yr);
    ps3.executeUpdate();
    
    
    PreparedStatement ps4=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps4.setString(1,"5th");
    ps4.setString(2,stringArray[1]);
    ps4.setString(3,stringArray[2]);
    ps4.setString(4,stringArray[3]);
    ps4.setString(5,stringArray[4]);
    ps4.setString(6,stringArray[5]);
    ps4.setString(7,stringArray[0]);
    ps4.setString(8,yr);
    ps4.executeUpdate();
    
    PreparedStatement ps5=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps5.setString(1,"6th");
    ps5.setString(2,stringArray[2]);
    ps5.setString(3,stringArray[3]);
    ps5.setString(4,stringArray[4]);
    ps5.setString(5,stringArray[5]);
    ps5.setString(6,stringArray[0]);
    ps5.setString(7,stringArray[1]);
    ps5.setString(8,yr);
    ps5.executeUpdate();
    
    PreparedStatement ps6=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?,?)");
    ps6.setString(1,"7th");
    ps6.setString(2,stringArray[3]);
    ps6.setString(3,stringArray[4]);
    ps6.setString(4,stringArray[5]);
    ps6.setString(5,stringArray[0]);
    ps6.setString(6,stringArray[1]);
    ps6.setString(7,stringArray[2]);
    ps6.setString(8,yr);
    ps6.executeUpdate();
        
    response.sendRedirect("./generate.jsp?msg=Success");
        
    }
       
    %>
    
    <%
    }
    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>