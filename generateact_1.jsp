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
    
    PreparedStatement ps=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?)");
    ps.setString(1,"1st");
    ps.setString(2,stringArray[0]);
    ps.setString(3,stringArray[1]);
    ps.setString(4,stringArray[2]);
    ps.setString(5,stringArray[3]);
    ps.setString(6,stringArray[4]);
    ps.setString(7,stringArray[5]);
    ps.executeUpdate();
    
    List<String> list = Arrays.asList(stringArray);          // converting array to a List
    Collections.shuffle(list);                               // Shuffling list elements
    i=0;
    for (String str : list) {
     System.out.println(str);
     stringArray1[i] = str;
    i++;
    }
    
    PreparedStatement ps1=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?)");
    ps1.setString(1,"2nd");
    ps1.setString(2,stringArray1[0]);
    ps1.setString(3,stringArray1[1]);
    ps1.setString(4,stringArray1[2]);
    ps1.setString(5,stringArray1[3]);
    ps1.setString(6,stringArray1[4]);
    ps1.setString(7,stringArray1[5]);
    ps1.executeUpdate();
    
    List<String> list1 = Arrays.asList(stringArray1);          // converting array to a List
    Collections.shuffle(list1);                               // Shuffling list elements
    i=0;
    
    for (String str : list1) {
     System.out.println(str);
     stringArray2[i] = str;
    i++;
    }
    
    PreparedStatement ps2=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?)");
    ps2.setString(1,"3rd");
    ps2.setString(2,stringArray2[0]);
    ps2.setString(3,stringArray2[1]);
    ps2.setString(4,stringArray2[2]);
    ps2.setString(5,stringArray2[3]);
    ps2.setString(6,stringArray2[4]);
    ps2.setString(7,stringArray2[5]);
    ps2.executeUpdate();
    
    List<String> list2 = Arrays.asList(stringArray2);          // converting array to a List
    Collections.shuffle(list2);                               // Shuffling list elements
    i=0;
    for (String str : list2) {
     System.out.println(str);
     stringArray3[i] = str;
    i++;
    }
    
    PreparedStatement ps3=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?)");
    ps3.setString(1,"4th");
    ps3.setString(2,stringArray3[0]);
    ps3.setString(3,stringArray3[1]);
    ps3.setString(4,stringArray3[2]);
    ps3.setString(5,stringArray3[3]);
    ps3.setString(6,stringArray3[4]);
    ps3.setString(7,stringArray3[5]);
    ps3.executeUpdate();
    
    List<String> list3 = Arrays.asList(stringArray3);          // converting array to a List
    Collections.shuffle(list3);                               // Shuffling list elements
    i=0;
    for (String str : list3) {
     System.out.println(str);
     stringArray4[i] = str;
    i++;
    }
    
    PreparedStatement ps4=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?)");
    ps4.setString(1,"5th");
    ps4.setString(2,stringArray4[0]);
    ps4.setString(3,stringArray4[1]);
    ps4.setString(4,stringArray4[2]);
    ps4.setString(5,stringArray4[3]);
    ps4.setString(6,stringArray4[4]);
    ps4.setString(7,stringArray4[5]);
    ps4.executeUpdate();
    
    List<String> list4 = Arrays.asList(stringArray4);          // converting array to a List
    Collections.shuffle(list4);                               // Shuffling list elements
    i=0;
    for (String str : list4) {
     System.out.println(str);
     stringArray5[i] = str;
    i++;
    }
    
    PreparedStatement ps5=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?)");
    ps5.setString(1,"6th");
    ps5.setString(2,stringArray5[0]);
    ps5.setString(3,stringArray5[1]);
    ps5.setString(4,stringArray5[2]);
    ps5.setString(5,stringArray5[3]);
    ps5.setString(6,stringArray5[4]);
    ps5.setString(7,stringArray5[5]);
    ps5.executeUpdate();
    
    List<String> list5 = Arrays.asList(stringArray5);          // converting array to a List
    Collections.shuffle(list5);                               // Shuffling list elements
    i=0;
    for (String str : list5) {
     System.out.println(str);
     stringArray5[i] = str;
    i++;
    }
    
    PreparedStatement ps6=connection.prepareStatement("insert into 1st values(?,?,?,?,?,?,?)");
    ps6.setString(1,"7th");
    ps6.setString(2,stringArray5[0]);
    ps6.setString(3,stringArray5[1]);
    ps6.setString(4,stringArray5[2]);
    ps6.setString(5,stringArray5[3]);
    ps6.setString(6,stringArray5[4]);
    ps6.setString(7,stringArray5[5]);
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