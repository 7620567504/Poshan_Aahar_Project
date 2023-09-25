<%@ page import="com.DbConnection" %>
<%@ page import ="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Presnty</title>
<style>
table
{
border-collapse:collapse;
width:100%;
}
tr,td
{
padding:8px;
text-align:left;
border-bottom: 1px solid #ddd;
border: 2px solid balck;
}
th
{
background-color: #f2f2f2;
}

</style>
</head>
<body>
<% Connection con=DbConnection.connect();
//int acc=Integer.parseInt(request.getParameter("Mobile_NO"));
PreparedStatement st;
st=con.prepareStatement("select * from  presenty");
//st.setInt(1,acc);
ResultSet rs=st.executeQuery();


%>
<table border="3">
<thead>
  <tr>
    <td>ScId</td>
    <td>Total_Stu</td>
   <td>Present_Student</td>
    <td>Absent_Stu</td>
     <td>Date</td>
  </tr>
 
  <% while(rs.next()){ %>
  <tr>
    <td><%=rs.getInt(1)%></td>
    <td><%=rs.getInt(2)%></td>
    <td><%=rs.getInt(3)%></td>
    <td><%=rs.getInt(4)%></td>
    <td><%=rs.getString(5)%></td>
    </tr>
     </thead>
  <% }%>
</table>

</body>
<div>
  <a href="operation.html" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">Back</a>
              
                </div>
</html>