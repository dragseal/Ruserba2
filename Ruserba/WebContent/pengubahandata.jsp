<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.util.*" %>
   <%@ page import="javafiles.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mengubah data...</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<%
	  String name = (String)request.getParameterNames().nextElement();
	  StringBuffer sb = new StringBuffer(name);
	  sb.deleteCharAt(0);
	
	  String new_id = request.getParameter("id");
	  String nama = request.getParameter("nama");
	  String harga = request.getParameter("harga");
	  String stok = request.getParameter("stok");
	  String kategori = request.getParameter("kategori");
	  String img_dir = request.getParameter("img_dir");
	  
	  if (nama != null && harga != null 
	          && stok != null && kategori != null && img_dir != null) {
	      javafiles.BarangManager.Ubah(new_id, nama, harga, stok, kategori, img_dir);
	      %><script>
	          alert("Data berhasil diubah");
	  	  </script><%
	  }
	%>	
	

	<a href="adminlistbarang.jsp">Kembali ke daftar barang </a>
	
	<p> Data yang akan diubah </p>
	<table>
			<tr>
			<th>Nama</th>
			<th>Harga</th>
			<th>Stok</th>
			<th>Kategori</th>
			<th>img_dir</th>
			</tr> 
			<%
			  
			  List list = javafiles.BarangManager.lihatEntri(sb.toString());
			  int id = 0;
			
			  Iterator<String> it = list.iterator();
			  
			  while (it.hasNext()) {
			      id = Integer.parseInt(it.next());
			      out.print("<tr>");
			      for (int i = 0; i < 5; i++) {
			          out.print("<td>");
			          out.print(it.next());
			          out.print("</td>");
			  }
			  out.print("<td>");
			  out.print("</td>");
			  out.print("</tr>");
			 }
			%>
		</table>
		
		<form method="post" action="pengubahandata.jsp">
		<table>
		<tr>    
		<td>ID</td><td><input type="text" name="id" value = <%=id %> disabled = "disabled"></td>
		</tr>
		<tr>    
		<td>Nama</td><td><input type="text" name="nama"></td>
		</tr>
		<tr>
		<td>Harga</td><td><input type="text" name="harga"></td>
		</tr>
		<tr>
		<td>Stok</td><td> <input type="text" name="stok"></td>
		</tr>
		<tr>
		<td>Kategori</td><td> <input type="text" name="kategori"></td>
		</tr>
		<input type="hidden" name="img_dir" value = ${requestScope["filenameservletubah"]} >
		</table>
		
		<br>
		<input type="submit" value="submit">

		</form>
		
		<br/>
		
		<form action="uploadfileubah" method="post" enctype="multipart/form-data">
               File:  <input type="file" name="file" />
                <input type="submit" value="upload" />
        </form>
        <div id="result">
            <h3>${requestScope["message"]}</h3><br/>
            <h3>File yang diupload: ${requestScope["filenameservletubah"]}</h3>
        </div>   
	<jsp:include page="footer.jsp"/>
</body>
</html>