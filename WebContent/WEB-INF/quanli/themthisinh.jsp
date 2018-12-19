<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
	    <title>ThemThiSinh</title>
	    <meta charset="utf-8" />
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/reset.css" />
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/menu.css" />
</head>
 	<body>

		<div class="container">

			<div class="menu">
				<ul>
					<li><h2>QL Thí Sinh</h2></li>
					<li><a href="${pageContext.request.contextPath}/DSthisinh">Danh sách thí sinh</a></li>
					<li><a href="DangNhap">Đăng Xuất</a></li>
				</ul>
			</div> <!--#menu-->

			<div class="content">
				<%
				    request.setCharacterEncoding("UTF-8");
				 %>
				

				   <br>
				
					<table border="1">
					<tr>
					<th style="width: 150px; ">UserName</th>
					<th style="width: 296px; ">Full name</th>
					</tr>
						<c:forEach items = "${l_thisinh}" var="thisinh">
								<tr>
								<td><center>${thisinh.username}</center></td>
								<td><center>${thisinh.fullname}</center></td>
								</tr>
						</c:forEach>
						
					</table>
					
				 	<form method="POST" action="${pageContext.request.contextPath}/add_ts">
					<br>

				      <label><b>Username</b></label>
				      <input type="text" placeholder="Enter Username" name="username" value= "${username}" required>
						<br>
						<br>
				      	<label><b>Password</b></label>
				      	<input type="password" placeholder="Enter Password" name="password" value= "${password}" required>
				      	<br>
				      	<br>
				        <label><b>Full name</b></label>
				      	<input type="text" placeholder="Enter Full name" name="fullname" value= "${fullname}" required>
				      	<br>
					    <br>
				      <button type="submit">Add</button>
				      
				

				    </form>
			</div> <!--#content-->

		</div> <!--#container-->

 	</body>
</html>