 <%@ page language="java" import="java.util.*"
    pageEncoding="UTF-8"%>

   <%@page import="java.sql.*"%>
   
 <%
    String name= request.getParameter("name");
	String email= request.getParameter("email");
	String message= request.getParameter("message");
	
 try {
	Class.forName("org.postgresql.Driver");
	
	String url = "jdbc:postgresql://localhost:5432/sang";
	String user = "postgres";
	String pwd= "amina";
	
	Connection con=DriverManager.getConnection(url, user, pwd);
	
	
	PreparedStatement ps=con.prepareStatement("insert into formulairedecontact values(?,?,?)");
	
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,message);
	
	int s= ps.executeUpdate();
	
	if(s>0){
		%>
		<jsp:forward page="formulairecontacte.jsp"></jsp:forward>
		<% 
		}
		else{
		out.print("sorry!please fill correct detail and try again" );
		}
	
  }
  catch (Exception e1){
	  e1.printStackTrace();
  }
 
 
 
 
 
 %>