<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>Quản lí câu hỏi</title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<div class="topnav">
 
<a href="${pageContext.request.contextPath}/DScauhoi">Danh sách câu hỏi</a>
      <a href="${pageContext.request.contextPath}/add_qs">Thêm câu hỏi</a>
	   <a href="${pageContext.request.contextPath}/edit_qs">Sửa câu hỏi</a>
	   <a href="${pageContext.request.contextPath}/del_qs">Xóa câu hỏi</a>
	      <a href="${pageContext.request.contextPath}/import">Import câu hỏi</a>
	        <a href="DangNhap">Đăng Xuất</a>

   
</div>

   <br>
	<br>
	<br>
	<center><h1>Danh sách câu hỏi</h1></center>
	<center><p style="color: red;">RECENT NOTIFICATION : ${error}</p></center>
	<table border="1">
	<tr>
	<th> ID </th>
	<th >Question</th>
	<th >A</th>
	<th >B</th>
	<th >C</th>
	<th >D</th>
	<th >Result</th>
	<th >Type</th>
	<th> ID CLass</th>
	
	</tr>
		<c:forEach items = "${l_cauhoi}" var="cauhoi">
				<tr>
				<td> ${cauhoi.getID()} </td>
				<td>${cauhoi.questname }</td>
				<td>${cauhoi.a}</td>
				<td>${cauhoi.b}</td>
				<td>${cauhoi.c}</td>
				<td>${cauhoi.d}</td>
				<td>${cauhoi.answer}</td>
				<td>${cauhoi.getType()}</td>
				

		
				</tr>
		</c:forEach>
		
	</table>

   <br>
<h2></h2>
</body>
</html>