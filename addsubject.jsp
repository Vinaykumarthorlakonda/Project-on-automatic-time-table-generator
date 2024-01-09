
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Automation of Timetable Generation System</title>
<link href="./style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert(' Success..!');</script>
    <%}%>
    
    <div id="wrapper">
    <div id="menu">
    <ul>
    <li><a href="./adminhome.jsp">Home</a></li>
    <li><a href="./addfaculty.jsp">Add Faculty</a></li>
    <li class="current_page_item"><a href="./addsubject.jsp">Add Subject</a></li>
    <li><a href="./generate.jsp">Generate Timetable</a></li>
    <li><a href="./aviewtimetable.jsp">View Timetable</a></li>
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
    String query="select facname from faculty "; 
    Statement st=connection.createStatement();
    ResultSet rs=st.executeQuery(query);
    %>
    
    <p align="justify">
        <center>    
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font color="red" size="5">Add Subject</font></p>
    <form name="myform" action="./addsubjectact.jsp" method="post" id="" >
    <table width="371">
    
    <tr>
    <td height="43"><font color="black">Select Year</td>
    <td><select name="year" style="width:170px;" required="">
    <option value="">--Select--</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    </select></td>
    </tr>    
    <tr>
    <td height="43"><font color="black">Select Faculty </td>
    <td width="218"><select id="s1" name="fname" style="width:170px;" class="text" required="">
     <option value="" >Select</option>       
      <% 

        while(rs.next())
        {

        String facname = rs.getString("facname");

       %>
       <option value="<%=facname%>" ><%=facname%></option>
       <% }%>
       </select></td>
       </tr>
    <tr>
    <td height="43"><font color="black">Subject </td>
    <td width="218"><input name="subject" autocomplete="off" required="" placeholder="Subject" /></td>
    </tr>
    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle">
    <p>
    <input name="submit" type="submit" value="ADD" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form></center>
    </p>
    
    <br/><br/>

    </div>
    <div style="clear: both;">&nbsp;</div>
    </div>
    </div>
        </div>
    </div>
    <div id="footer-wrapper">

    <div id="footer">
    <p> Developed by: <a href="https://www.naukri.com/mnjuser/homepage">THORLAKONDA VINAYKUMAR</a> </font></p>
    </div>
    </div>
    
</body>
</html>
