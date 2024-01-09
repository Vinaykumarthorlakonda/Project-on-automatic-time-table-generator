
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Automation of Timetable Generation System</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Login Success..!');</script>
    <%}%>
    
    <div id="wrapper">
    <div id="menu">
    <ul>
    <li class="current_page_item"><a href="./adminhome.jsp">Home</a></li>
    <li><a href="./addfaculty.jsp">Add Faculty</a></li>
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
    
    <center><p><font color="red" size="5"> Welcome Admin</font></p></center>
    
    <br/><br/>

    </div>
    <div style="clear: both;">&nbsp;</div>
    </div>
    </div>
        </div>
    </div>
    <div id="footer-wrapper">

    <div id="footer">
    <p> Developed by: <a href="https://www.naukri.com/mnjuser/homepage"><font color="white">Thorlakonda vinaykumar</a> </font></p>
    </div>
    </div>
    
</body>
</html>
