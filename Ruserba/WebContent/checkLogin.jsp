<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%  
                    String user=request.getParameter("username");  
                    String pass=request.getParameter("password");  
                    String connectionURL = "jdbc:mysql://localhost:3306/waserda";  
                    boolean found = false;
  
                         try{  
  
                         Class.forName("com.mysql.jdbc.Driver");  
                         Connection con=DriverManager.getConnection(connectionURL, "java", "java");  
                         Statement st=con.createStatement();  
                         ResultSet rs=st.executeQuery("select username,password from data_user");  
                         while(rs.next())  
                             {  
                             String username=rs.getString(1);  
                             String password=rs.getString(2);  
                             if(user.equals(username) && pass.equals(password)){  
                                 session.setAttribute("username",username);  
                                 out.println("Welcome " + username + " <a href=\"index.jsp\">Back to main</a>");  
                             	found = true;
                             }  
                                     
                         }  
                         
                         if (!found){
                        	 out.println("Invalid username and password combination" + " <a href=\"index.jsp\">Back to main</a>");
                         }
                    }catch(Exception e1){}  
                    %>  

</body>
</html>
