<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Detail Barang</title>
<meta charset="ISO-8859-1">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<form action="detail_result.jsp" method="post">
	
	Nama barang : <input type="text" name="namabarang" />
	<input type="submit" />

	<jsp:include page="footer.jsp"/>

</form>
</body>
</html>