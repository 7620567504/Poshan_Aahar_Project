<%@ page import="com.DbConnection" %>
<%@ page import ="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table
{
width:100%;
}
tr,td
{
padding:8px;
text-align:left;
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
st=con.prepareStatement("select * from  sup");
//st.setInt(1,acc);
ResultSet rs=st.executeQuery();


%>
<table border="3">
  <thead>
  <tr>
    <td>sId</td>
    <td>Name</td>
    <td>Email</td>
    <td>Password</td>
    <td>City</td>
     <td>Delete</td>
   
  </tr>
  </thead>
  <tbody>
  <% while(rs.next()){ %>
  <tr>
    <td><%=rs.getInt(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
   	 <td><%=rs.getString(5)%></td>
   	<td><a href="Supplierdelete.jsp?Id=<%=rs.getInt(1)%> ">delete</a></td> 
  </tr>
  <% }%>
  </tbody>
</table>

</body>
<div>
  <a href="Supview.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">Back</a>
              
                </div>

</html>