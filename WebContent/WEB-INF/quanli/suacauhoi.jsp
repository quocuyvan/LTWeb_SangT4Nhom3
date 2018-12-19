<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>Sửa câu hỏi</title>
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
   <br>
	<br>
	<br>
	<center><h1>Sửa câu hỏi</h1></center>
	<br>
	<br>
	 	<form method="POST" action="${pageContext.request.contextPath}/edit_qs">
	<center><h2>Sửa câu hỏi qua ID Question</h2>
	<br>
<center><p style="color: red;">RECENT NOTIFICATION : ${error}</p></center>
	<br>
	<form method="POST" action="${pageContext.request.contextPath}/add_qs">

    <div class="container">
      <label><b>idQuestion</b></label>
      <input type="text" placeholder="Enter id Question" name="idQuestions" value= "${idQuestions}" required>
      <br>
            <label><b>Question</b></label>
      <input type="text" placeholder="Enter Question" name="questName" value= "${questName}" required>
      <br>
            <label><b>A</b></label>
      <input type="text" placeholder="Enter Answer A" name="a" value= "${a}" required>
      <br>
            <label><b>B</b></label>
      <input type="text" placeholder="Enter Answer B" name="b" value= "${b}" required>
      <br>
            <label><b>C</b></label>
      <input type="text" placeholder="Enter Answer C" name="c" value= "${c}" required>
      <br>
            <label><b>D</b></label>
      <input type="text" placeholder="Enter Answer D" name="d" value= "${d}" required>
      <br>
            <label><b>Result</b></label>
                  <label><b>Result</b></label>
            <select name="result" form="result">
  	
<option value="A.">A</option>
<option value="A.">B</option>
<option value="C.">C</option>
<option value="D.">D</option>
</select>
      <br>
            <label><b>Type</b></label>
                  <select name="type" form="type">
  	
<option value="Easy">Easy</option>
<option value="Medium">Medium</option>
<option value="Hard">Hard</option>

</select>
      <br>
            <label><b>ID class</b></label>
            <select name="idClass" form="idClass">
  	
<option value="1">Class C#</option>
<option value="2">Class Toán</option>
<option value="3">Class Python</option>
<option value="4">Class Tiếng Anh</option>
<option value="5">Class Vật lí</option>
<option value="6">Class Địa lí</option>
</select>
      <br>
      <button type="submit">Edit</button>
      </center>

	<br>
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
				<td> null </td>
				<td>${cauhoi.questname }</td>
				<td>${cauhoi.a}</td>
				<td>${cauhoi.b}</td>
				<td>${cauhoi.c}</td>
				<td>${cauhoi.d}</td>
				<td>${cauhoi.answer}</td>
				<td>${cauhoi.type}</td>
				<td> null </td>
				

		
				</tr>
		</c:forEach>
		
	</table>

   <br>
	

      


    </form>
</body>
</html>