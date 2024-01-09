
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Automation of Timetable Generation System</title>
<link href="./style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    
    <div id="wrapper">
    <div id="menu">
    <ul>
    <li><a href="./adminhome.jsp">Home</a></li>
    <li><a href="./addfaculty.jsp">Add Faculty</a></li>
    <li><a href="./addsubject.jsp">Add Subject</a></li>
    <li><a href="./generate.jsp">Generate Timetable</a></li>
    <li class="current_page_item"><a href="./aviewtimetable.jsp">View Timetable</a></li>
    <li><a href="./logout.jsp">Logout</a></li>
    </ul>
    </div>
    <!-- end #menu -->
    <div id="header">
   
    <br/><center><p> <font size="6" color="black"><i><b> Automation of Timetable Generation System </b></i></font></p></center>
    
    </div>

    <div id="splash">&nbsp;</div>
            <!-- end #header -->
    <div id="page">
    <div id="page-bgtop">
    <div id="page-bgbtm">
    <div id="content">

    <br/><br/>
    
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>
    
    <%
    String yr = request.getParameter("year");
    int year = Integer.parseInt(yr);
    try{
    
    if(year==1){
    String query="select * from 1st where year = '"+yr+"' "; 
    Statement st=connection.createStatement();
    ResultSet rs=st.executeQuery(query);
    
    String query1="select * from first "; 
    Statement st1=connection.createStatement();
    ResultSet rs1=st1.executeQuery(query1);
    %>
    
        <p><font size="5" color="black" >View Timetable of <%=yr%>st Year </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
            color: black;
        }
    </style>
     <table border="1" width="70%">

    <tr>
    <th>Hour</th>
    <th>Monday</th>
    <th>Tuesday</th>
    <th>Wednesday</th>
    <th>Thursday</th>
    <th>Friday</th>
    <th>Saturday</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        
    </tr>
    
   <%} %> 
   </table>
        
    <br/><br/>    
    <table border="1" width="50%">

    <tr>
    <th>Faculty Name</th>
    <th>Subject</th>

    </tr>

    <%     while (rs1.next()) {
    %>

    <tr>
        <td><%=rs1.getString(2)%></td>
        <td><%=rs1.getString(3)%></td>
        
    </tr>
    
   <%} }%> 
   </table>    
   
   <%     
   if(year==2){
    String query="select * from 1st where year = '"+yr+"' "; 
    Statement st=connection.createStatement();
    ResultSet rs=st.executeQuery(query);
    
    String query1="select * from second "; 
    Statement st1=connection.createStatement();
    ResultSet rs1=st1.executeQuery(query1);
    %>
    
        <p><font size="5" color="black" >View Timetable of <%=yr%>nd Year </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
            color: black;
        }
    </style>
     <table border="1" width="70%">

    <tr>
    <th>Hour</th>
    <th>Monday</th>
    <th>Tuesday</th>
    <th>Wednesday</th>
    <th>Thursday</th>
    <th>Friday</th>
    <th>Saturday</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        
    </tr>
    
   <%} %> 
   </table> 
        
   <br/><br/>    
    <table border="1" width="50%">

    <tr>
    <th>Faculty Name</th>
    <th>Subject</th>

    </tr>

    <%     while (rs1.next()) {
    %>

    <tr>
        <td><%=rs1.getString(2)%></td>
        <td><%=rs1.getString(3)%></td>
        
    </tr>
    
   <%} }%> 
   </table>
        
    <%     
    if(year==3){
    String query="select * from 1st where year = '"+yr+"' "; 
    Statement st=connection.createStatement();
    ResultSet rs=st.executeQuery(query);
    
    String query1="select * from third "; 
    Statement st1=connection.createStatement();
    ResultSet rs1=st1.executeQuery(query1);
    %>
    
        <p><font size="5" color="black" >View Timetable of <%=yr%>rd Year </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
            color: black;
        }
    </style>
     <table border="1" width="70%">

    <tr>
    <th>Hour</th>
    <th>Monday</th>
    <th>Tuesday</th>
    <th>Wednesday</th>
    <th>Thursday</th>
    <th>Friday</th>
    <th>Saturday</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        
    </tr>
    
   <%} %> 
   </table>
        
    <br/><br/>    
    <table border="1" width="50%">

    <tr>
    <th>Faculty Name</th>
    <th>Subject</th>

    </tr>

    <%     while (rs1.next()) {
    %>

    <tr>
        <td><%=rs1.getString(2)%></td>
        <td><%=rs1.getString(3)%></td>
        
    </tr>
    
   <%} }%> 
   </table>    
        
    <%
    if(year==4){
    String query="select * from 1st where year = '"+yr+"' "; 
    Statement st=connection.createStatement();
    ResultSet rs=st.executeQuery(query);
    
    String query1="select * from fourth "; 
    Statement st1=connection.createStatement();
    ResultSet rs1=st1.executeQuery(query1);
    %>
    
        <p><font size="5" color="black" >View Timetable of <%=yr%>th Year </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
            color: black;
        }
    </style>
     <table border="1" width="70%">

    <tr>
    <th>Hour</th>
    <th>Monday</th>
    <th>Tuesday</th>
    <th>Wednesday</th>
    <th>Thursday</th>
    <th>Friday</th>
    <th>Saturday</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        
    </tr>
    
   <%}%> 
   </table> 
    <br/><br/>    
    <table border="1" width="50%">

    <tr>
    <th>Faculty Name</th>
    <th>Subject</th>

    </tr>

    <%     while (rs1.next()) {
    %>

    <tr>
        <td><%=rs1.getString(2)%></td>
        <td><%=rs1.getString(3)%></td>
        
    </tr>
    
   <%} }%> 
   </table>    
        
        
    
    <%
    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    
    <br/><br/>

    </div>
    <div style="clear: both;">&nbsp;</div>
    </div>
    </div>
        </div>
    </div>
    <div id="footer-wrapper">

    <div id="footer">
    <p> Developed by: <a href="https://www.naukri.com/mnjuser/homepage"><font color="white">THORLAKONDA VINAYKUMAR</a> </font></p>
    </div>
    </div>
    
</body>
</html>
