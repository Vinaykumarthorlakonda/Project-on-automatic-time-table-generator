
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
    <li class="current_page_item"><a href="./addfaculty.jsp">Add Faculty</a></li>
    <li><a href="./addsubject.jsp">Add Subject</a></li>
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
    
    <p align="justify">
    <center>    
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font color="red" size="5">Add Faculty Information</font></p>
    <form name="myform" action="./addfacultyact.jsp" method="post" id="" >
    <table width="371">
    <tr>
    <td height="43"><font color="black">Faculty Name </td>
    <td width="218"><input name="fname" autocomplete="off" required="" placeholder="Faculty Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" autocomplete="off" required="" placeholder="Email ID"/></td>
    </tr>
    <tr>
    <td height="65"><font color="black">Address</td>
    <td><input name="address" autocomplete="off" required="" placeholder="Address"></input></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input name="mobile" autocomplete="off" required="" placeholder="Mobile Number"/></td>
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
    </form>
    </center>    
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
