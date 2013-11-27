 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 <html> 
 	<head> 
 		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
 		<title> My first JSP </title> 
 	</head> 
 	<body> 
 		<jsp:include page="header.jsp"/>
 		<form action="indexcontent" method="post"> 
 			Please enter a color 
 			<input type="text" name="color"size="20px"> 
 			<input type="submit" value="submit"> 
 		</form> 
 		
 		
        <%
        String myname =  (String)session.getAttribute("username");
       	boolean test = false;
       	String nama = "dummy";
 		if(myname!=null){
 			test = true;
 			nama = myname;
 		}
        	if(test == true)
            	{
	             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
	             if(nama.equals("admin"))
	            		 {
	             %>
	             <div id = "admin">
	 				<ul class ="tes">
	   					<li><a href="adminlistbarang.jsp">a1</a>
	 						<li><a href="admintambah.jsp">a2</a>
	  						<li><a href="adminhapus.jsp">a3</a>
	  						<li><a href="adminubah.jsp">a4</a>
	  
	  				</ul>
	  			</div>
	  			<%
	             }
	            }
	        else if (nama.equals("dummy")) 
	            {
	        	
	            %>
	            <H1>LOGIN FORM</H1>
	            <form action="checkLogin">
	                <table>
	                    <tr>
	                        <td> Username  : </td><td> <input name="username" size=15 type="text" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Password  : </td><td> <input name="password" size=15 type="password" /> </td> 
	                    </tr>
	                </table>
	                <input type="submit" value="login" />
	            </form>
	            
	            <H1>Register FORM</H1>
	            <form method="post" action="register.jsp">
	            	<table>
	                    <tr>
	                        <td> Username  : </td><td> <input name="username" size=15 type="text" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Password  : </td><td> <input name="password" size=15 type="password" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Repeat Password  : </td><td> <input name="Rpassword" size=15 type="password" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Nama Lengkap  : </td><td> <input name="nama" size=15 type="text" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> No HP  : </td><td> <input name="hp" size=15 type="text" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Alamat  : </td><td> <input name="addr" size=15 type="text" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Provinsi  : </td><td> <input name="prov" size=15 type="text" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Kota  : </td><td> <input name="kota" size=15 type="text" /> </td> 
	                    </tr>
	                    <tr>
	                        <td> Kode pos  : </td><td> <input name="pos" size=15 type="text" /> </td> 
	                    </tr>
	                </table>
	                <input type="submit" value="Submit" />
	            </form>
	            <% 
	            }
	            
	            %> 		
	          
	 		
 		<jsp:include page="footer.jsp"/>
 		
 	</body> 
 </html>