<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Barang berdasarkan Harga</title>
<meta charset="ISO-8859-1">
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<form action="harga_result.jsp" method="post">
	
	Harga 1 : <input type="text" name="h1" />
	Harga 2 : <input type="text" name="h2" />
	<input type="submit" />
	
	<jsp:include page="footer.jsp"/>

</form>
</body>
</html>