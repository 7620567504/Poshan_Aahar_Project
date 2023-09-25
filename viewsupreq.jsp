<%@ page import="com.DbConnection" %>
<%@ page import ="java.sql.*"%>
<%@ page import="com.User" %>
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
border-collapse:collapse;
width:100%;
}
tn,td
{
padding:8px;
text-align:left;
border-bottom: 1px solid #ddd;
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
PreparedStatement stm;
int p=0;
int a=0;

int id=User.getSupplierId();


st=con.prepareStatement("select * from  screq  ");
//st.setInt(1,acc);

ResultSet rs=st.executeQuery();
stm=con.prepareStatement("select * from  Sup ");
ResultSet rsp=stm.executeQuery();





%>
<table border=(5)>

  <tr>
    <td>ScId</td>
    <td>Students</td>
    <td>Meal Supply </td>
    <td>Rice</td>
    <td> Oil</td>
    <td>Biscuit</td>
    <td>Amount</td>
    <td>status</td>
   
    <td>Action</td>
  </tr>
  <% while(rs.next())
  
	  
  { %>
  <tr>
    <td><%=rs.getInt(1)%></td>
    <td><%=rs.getInt(2)%></td>
    <td><%=rs.getInt(3)%></td>
    <td><%=rs.getInt(4)%></td>
   	 <td><%=rs.getInt(5)%></td>
   	 <td><%=rs.getInt(6)%></td>	 
   	  <td><%=rs.getInt(7)%></td>
      <td><%=rs.getString(8)%></td>
   	  
   	
    
   		<td><a href="updateviewreq.jsp?Id=<%=rs.getInt(1)%> ">status</a></td>
   		
   	 
   	 
  </tr>
  <% }%>
</table>

</body>
<div>
  <a href="operation1.html" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">Back</a>
   </div>
</html>
               
              