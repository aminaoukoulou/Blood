<%@ page language="java" import="java.util.*"
    pageEncoding="UTF-8"%>

   <%@page import="java.sql.*"%>
   
 <%
    String name= request.getParameter("name");
    String fullname= request.getParameter("fullname");
    String phone= request.getParameter("phone");
    String add= request.getParameter("add");
	String blood= request.getParameter("blood");
	String hospital= request.getParameter("hospital");
	
 try {
	Class.forName("org.postgresql.Driver");
	
	String url = "jdbc:postgresql://localhost:5432/sang";
	String user = "postgres";
	String pwd= "amina";
	
	Connection con=DriverManager.getConnection(url, user, pwd);
	
	
	PreparedStatement ps=con.prepareStatement("insert into formulaire values(?,?,?,?,?,?)");
	
	ps.setString(1,name);
	ps.setString(2,fullname);
	ps.setString(3,phone);
	ps.setString(4,add);
	ps.setString(5,blood);
	ps.setString(6,hospital);
	
	int s= ps.executeUpdate();
	
	if(s>0){
		%>
		<jsp:forward page="formulaire.jsp"></jsp:forward>
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
 
 